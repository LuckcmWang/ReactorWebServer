#include <assert.h>

// #include "Logger.h" // debug
// #include "CurrentThread.h" // debug
#include "threadpool.h"
#include <iostream>
#include <string.h>

// 头文件extern声明变量
// 此处初始化并定义
// 其他文件引用头文件就可以使用这个变量
ThreadPool* thread_pool =  new ThreadPool();
std::queue<std::pair<EventHandler*, ThreadPool::taskType>> m_socktasks;

ThreadPool::ThreadPool()
  :m_mutex(),
  m_cond(), 
  m_isStarted(false)
{

}

ThreadPool::~ThreadPool()
{
  if(m_isStarted)
  {
    stop();
  }
}

void ThreadPool::start()
{
  assert(m_threads.empty());
  m_isStarted = true;
  m_threads.reserve(kInitThreadsSize);
  for (int i = 0; i < kInitThreadsSize; ++i)
  {
      //创建新的thread运行threadLoop方法
      //新建的线程一共四个，调用take函数，返回该线程要执行的任务
      //访问任务队列之前需要加锁，任务队列为空则阻塞在条件变量中，等待主线程添加任务到任务队列后通知它。（进程间通信，条件变量）
      
      //如果非socket任务  
      // m_threads.push_back(new std::thread(std::bind(&ThreadPool::threadLoop, this)));

        //socket任务
        m_threads.push_back(new std::thread(std::bind(&ThreadPool::threadLoopforSocketTask, this)));
  }
}

void ThreadPool::stop()
{
    std::unique_lock<std::mutex> lock(m_mutex);
    m_isStarted = false;
    m_cond.notify_all();

    for (Threads::iterator it = m_threads.begin(); it != m_threads.end() ; ++it)
    {
      (*it)->join();
      delete *it;
    }
    m_threads.clear();
}

void ThreadPool::threadLoopforSocketTask()
{
    //所有新线程都会执行这个函数
    std::cout<<"one thread created !!!"<<std::endl;
  while(m_isStarted)
  {
    SocketTaskPair socketTaskPair = takeEventHandle();
    //first  为事件的 handler
    //second 为事件的 类型
    if(socketTaskPair.first!=NULL){

        if (socketTaskPair.second == EPOLLINFLAG)
        {
          std::cout<<"---now the thread is handling reading !!!"<<std::endl;
          socketTaskPair.first->handle_read();
        }
        else if (socketTaskPair.second == EPOLLOUTFLAG)
        {
          std::cout<<"---now the thread is handling writing !!!"<<std::endl;
          socketTaskPair.first->handle_write();
        }
        else if (socketTaskPair.second == EPOLLOTHERFLAG)
        {
          std::cout<<"---now the thread is handling error !!!"<<std::endl;
          socketTaskPair.first->handle_error();
        }
    }
  }
}
//xiaowang 添加socket的处理函数
void ThreadPool::addTask(const SocketTaskPair& task)
{

    if (this->m_isStarted)
    {
          //C++11中引入了std::unique_lock与std::lock_guard两种数据结构。
          //通过对lock和unlock进行一次薄的封装，实现自动unlock的功能。
          // std::unique_lock 与std::lock_guard都能实现自动加锁与解锁功能，
          // 但是std::unique_lock要比std::lock_guard更灵活，但是更灵活的代价是占用空间相对更大一点且相对更慢一点。
          std::unique_lock<std::mutex> lock(m_mutex);
          //bug暂时应该是m_socktasks这个队列出错了，task是传递过来了的。

          m_socktasks.push(task);
          std::cout<<m_socktasks.size()<<" tasks in queue"<<std::endl;

          m_cond.notify_one();

          std::cout<<"had notifyed"<<std::endl;; 
    }
    
    
    //后面改take中的内容就好了，线程池就添加到服务器中了
}
//xiaowang 处理socket的函数
ThreadPool::SocketTaskPair ThreadPool::takeEventHandle(){
    std::unique_lock<std::mutex> lock(m_mutex);
    while (m_socktasks.empty() && m_isStarted)
    {
        std::cout<<"now there is no task in the queue, I will sleep and waiting for task..."<<std::endl;
        //锁和条件变量搭配使用
        //这个线程等待某个条件产生，wait先获取锁，然后将线程挂起，等待事件发生。同时释放锁。
        m_cond.wait(lock);
        std::cout<<"waken!";
    }
    SocketTaskPair stask;
    if(!m_socktasks.empty()){
       stask = m_socktasks.front();
       m_socktasks.pop();
       std::cout<<"---still have "<<m_socktasks.size()<<"tasks in the queue";
    }
    std::cout<<"---go to threadloop";
    return stask;
}

void ThreadPool::threadLoop()
{
    //所有新线程都会执行这个函数
//   LOG_TRACE << "ThreadPool::threadLoop() tid : " << CurrentThread::tid() << " start.";
  while(m_isStarted)
  {
    //新线程会在此阻塞或者得到任务，然后执行
    Task task = take();
    if(task)
    {
      task();
    }
  }
//   LOG_TRACE << "ThreadPool::threadLoop() tid : " << CurrentThread::tid() << " exit.";
}



void ThreadPool::addTask(const Task& task)
{
  std::unique_lock<std::mutex> lock(m_mutex);
  /*while(m_tasks.isFull())
    {//when m_tasks have maxsize
      cond2.wait();
    }
  */
  TaskPair taskPair(level2, task);
  m_tasks.push(taskPair);
  m_cond.notify_all();
}

void ThreadPool::addTask(const TaskPair& taskPair)
{
  std::unique_lock<std::mutex> lock(m_mutex);
  /*while(m_tasks.isFull())
    {//when m_tasks have maxsize
      cond2.wait();
    }
  */
  m_tasks.push(taskPair);
  m_cond.notify_all();
}


ThreadPool::Task ThreadPool::take()
{
//线程池中的线程在此争用互斥量，该互斥量保护对任务队列的互斥访问
  std::unique_lock<std::mutex> lock(m_mutex);
  //always use a while-loop, due to spurious wakeup
  while(m_tasks.empty() && m_isStarted)
  {
    // LOG_TRACE << "ThreadPool::take() tid : " << CurrentThread::tid() << " wait.";
    m_cond.wait(lock);
  }

//   LOG_TRACE << "ThreadPool::take() tid : " << CurrentThread::tid() << " wakeup.";
//从任务队列中取出一个任务返回给调用的线程
  Task task;
  Tasks::size_type size = m_tasks.size();
  if(!m_tasks.empty() && m_isStarted)
  {
    task = m_tasks.top().second;
    m_tasks.pop();
    assert(size - 1 == m_tasks.size());
    /*if (TaskQueueSize_ > 0)
    {
      cond2.notify();
    }*/
  }

  return task;

}

