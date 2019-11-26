#ifndef _REACTOR_SOCK_HANDLE_H_
#define _REACTOR_SOCK_HANDLE_H_

//客户端与服务器连接后，会产生相应的套接字描述符，这个描述符的读写事件就是服务器进程和客户端进程之间进行通信
//epoll会监听这个套接字描述符的通信事件，然后分发到这个类，让这个类的对象来处理套接字的读写事件。
//客户端给服务器发消息了，该套接字就产生读事件，服务器就安排线程池中的线程来处理这个读，
// 服务器给客户端发消息了，该套接字就会产生写事件，服务器就安排线程池中的线程来处理这个写事件
class SockHandle : public EventHandler
{
  public:
    SockHandle( Handle fd );
    virtual ~SockHandle();

    virtual Handle get_handle() const;
    virtual void handle_read();
    virtual void handle_write();
    virtual void handle_error();

  private:
    Handle sock_fd;
    char* buf;
    static const int MAX_SIZE = 1024;
};

#endif
