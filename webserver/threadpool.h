#ifndef _THREADPOOL_HH
#define _THREADPOOL_HH

#include <vector>
#include <utility>
#include <cstdlib>
#include <queue>
#include <thread>
#include <functional>
#include <mutex>
#include <condition_variable>
#include "event_handle.h"

class ThreadPool{
public:
  static const int kInitThreadsSize = 4;
  enum taskPriorityE { level0, level1, level2, };
  typedef std::function<void()> Task;
  typedef std::pair<taskPriorityE, Task> TaskPair;

  //xiaowang 
    typedef EventHandler* SocketTask;
    enum taskType { EPOLLINFLAG, EPOLLOUTFLAG, EPOLLOTHERFLAG};// EPOLLOTHER： EPOLLRDHUP | EPOLLHUP | EPOLLERR
    typedef std::pair<SocketTask, taskType> SocketTaskPair;

  ThreadPool();
  ~ThreadPool();

  void start();
  void stop();
  void addTask(const Task&);
  void addTask(const TaskPair&);
    
    //xiaowang 20191126 先假设同时最多有一万个描述符任务待处理
    static const int taskqueue_size = 100;
    //xiaowang socket任务的take函数
    //xiaowang 20191123 v1.0
    void addTask(const SocketTaskPair&);
    void threadLoopforSocketTask();
    SocketTaskPair takeEventHandle();

    
private:
  ThreadPool(const ThreadPool&);//禁止复制拷贝.
  const ThreadPool& operator=(const ThreadPool&);

  struct TaskPriorityCmp
  {
    bool operator()(const ThreadPool::TaskPair p1, const ThreadPool::TaskPair p2)
    {
        return p1.first > p2.first; //first的小值优先
    }
  };

  void threadLoop();
  Task take();
  typedef std::vector<std::thread*> Threads;
  typedef std::priority_queue<TaskPair, std::vector<TaskPair>, TaskPriorityCmp> Tasks;

    //xiaowang 20191123 v1.0
    typedef std::queue<SocketTaskPair> SocketTaskPairs;
    // SocketTaskPairs* m_socktasks;
    std::mutex m_socktasks_mutex;

  Threads m_threads;
  Tasks m_tasks;

  std::mutex m_mutex;
  std::condition_variable m_cond;
  bool m_isStarted;
};

//定义一个线程池变量
extern ThreadPool* thread_pool;
// 定义任务队列，不知道为什么放在类里面作为成员的时候会有bug
extern std::queue<std::pair<EventHandler*, ThreadPool::taskType>> m_socktasks;

#endif