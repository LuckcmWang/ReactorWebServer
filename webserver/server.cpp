#include <sys/socket.h>
#include <sys/types.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include <thread>
#include <map>

#include "event_handle.h"
#include "reactor.h"
#include "listen_handle.h"
#include "sock_handle.h"
#include "threadpool.h"

//191121 引入线程池+
bool IsThreadpoolReady = false;

int main(int argc, char **argv)
{
    //建立一个线程池 20191122 wcm
    if (thread_pool != NULL)
    {
        thread_pool->start();
        IsThreadpoolReady = true;
    }

    //此处的事件是一个服务器的监听套接字描述符
    //这个事件被放到了监听套接字描述符事件的事件处理器中
    ListenHandle* handle = new ListenHandle();
	handle->listenOn(9876);
    //reactor唯一实例
    Reactor& actor = Reactor::get_instance();
    //反应堆来注册这个事件的事件处理器和事件什么状态下会响应。
    //反应堆的注册函数调用了同步事件多路分离器的注册函数，将事件处理器对象中的文件描述符加入到epoll检查的描述符集中，等待相应事件发生
    actor.regist( handle, ReadEvent );

    while( true )
    {
        //这里每循环一次，反应堆就调用一次event_loop，效果是使用同步事件多路分离器epoll的wait函数检查描述符集合中相应事件发生了的描述符
        //挑选出发生了相应事件的描述符，然后使用描述符的特定的事件处理器类的处理函数进行处理。
        //而对于服务器程序而言，事件就是套接字描述符，用epoll时epoll_event结构体里的data既存储了描述符还存储了对应的事件处理函数的指针。
        //因此，reactor就是用来注册事件处理器（包含事件）和监听的事件类型的，目标是通过多路分离器收集有事件发生的描述符，然后将其分离到各自的处理函数当中去。
        actor.event_loop( -1 ); 
        printf("one loop\n");
    }

    delete thread_pool;
    delete handle;

    return 0;
}

