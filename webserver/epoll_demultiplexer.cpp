#include <map>
#include <vector>
#include <iostream>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/epoll.h>
#include "stdio.h"

#include "event.h"
#include "event_handle.h"
#include "event_demultiplexer.h"
#include "epoll_demultiplexer.h"

#define MULTITHREAD
//此处声明server中的变量
#ifdef MULTITHREAD
#include "threadpool.h"
// extern ThreadPool* thread_pool;
#endif 

const int EpollDemultiplexer::max_event = 1024;
EpollDemultiplexer::EpollDemultiplexer()
:epoll_fd(-1)
{
    epoll_fd = epoll_create( max_event );
	evs.resize( max_event );
}

EpollDemultiplexer::~EpollDemultiplexer()
{
	if( epoll_fd != -1 )
		close( epoll_fd );
}

int EpollDemultiplexer::wait_event(  std::map<Handle, EventHandler *>&  handlers,
                                int timeout )
{
    //evs[0]是一个值返回的参数，返回
    int num = epoll_wait( epoll_fd, &evs[0], max_event, timeout );

    //单线程实现
#ifdef SINGLETHREAD
    for ( int i = 0; i < num; ++i )
	{
		EventHandler* handler = (EventHandler*)evs[i].data.ptr;

		if ( (EPOLLIN) & evs[i].events )
		{
				handler->handle_read();
		}

		if ( EPOLLOUT & evs[i].events )
		{
				handler->handle_write();
		}
		if ( (EPOLLRDHUP | EPOLLHUP | EPOLLERR) & evs[i].events )
		{
			handler->handle_error();
		}
	}
#endif // SINGLETHREAD    
	
    
    // 多线程实现 只要调用实现好的threadpool中的addtask来添加新的描述副的任务就好。
#ifdef MULTITHREAD
    for ( int i = 0; i < num; ++i )
	{
		EventHandler* handler = (EventHandler*)evs[i].data.ptr;

    	if ( (EPOLLIN) & evs[i].events )
		{
            std::cout<<"epoll dispatched one read task"<<std::endl;
            ThreadPool::SocketTaskPair task(handler,ThreadPool::EPOLLINFLAG);
            thread_pool->addTask(task);
		}

		if ( EPOLLOUT & evs[i].events )
		{
            std::cout<<"epoll dispatched one write task"<<std::endl;
            ThreadPool::SocketTaskPair task(handler,ThreadPool::EPOLLOUTFLAG);
			thread_pool->addTask(task);
		}

		if ( (EPOLLRDHUP | EPOLLHUP | EPOLLERR) & evs[i].events )
		{
            std::cout<<"epoll dispatched one error task"<<std::endl;
            ThreadPool::SocketTaskPair task(handler,ThreadPool::EPOLLOTHERFLAG);
			thread_pool->addTask(task);
		}
	}
#endif // MULTITHREAD
    return num;
}

int EpollDemultiplexer::regist(EventHandler* handler, Event evt)
{
    struct epoll_event ev;

	ev.data.ptr = (void*)handler;

    if ( evt & ReadEvent )
    {
        ev.events |= EPOLLIN;
		ev.events |= EPOLLET;
    }
    if ( evt & WriteEvent )
    {
        ev.events |= EPOLLOUT;    
    }

    if ( 0 != epoll_ctl( epoll_fd, EPOLL_CTL_ADD, handler->get_handle(), &ev ) )
    {
        if ( errno == ENOENT ) 
        {
            if ( 0 != epoll_ctl( epoll_fd, EPOLL_CTL_ADD, handler->get_handle(), &ev ) )
            {
                printf("epoll_ctrl add error : %s\n", strerror(errno));
                return -errno;
            }
        }
    }

    return 0;
}

int EpollDemultiplexer::remove(Handle handle)
{
    struct epoll_event ev;

    if ( 0 != epoll_ctl( epoll_fd, EPOLL_CTL_DEL, handle, &ev ) )
    {
        printf("epoll_ctrl del error : %s\n", strerror(errno));
        return -errno;
    }
    printf("epoll_ctrl del success \n");
    return 0;
}

