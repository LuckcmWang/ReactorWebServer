#ifndef _REACTOR_LISTEN_HANDLE_H_
#define _REACTOR_LISTEN_HANDLE_H_

//服务器监听套接字的事件处理器，接收新连接时要进行处理 也就是epoll会得到服务器监听套接字的读的事件，说明有新的连接。
class ListenHandle : public EventHandler
{
  public:
    ListenHandle();
    virtual ~ListenHandle();

    virtual Handle get_handle() const { return listenfd; }
    //为了配合线程池，重写函数
    virtual void handle_read();
    virtual void handle_write() {}
    virtual void handle_error(); 
	
	bool listenOn( int port );

  private:
	void setNonBlocking( int fd );	

  private:
    Handle listenfd;
};

#endif
