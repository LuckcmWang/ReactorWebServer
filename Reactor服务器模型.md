
# Reactor模式

## 5个关键的参与者
在Reactor模式中，一般有5个关键的参与者
* 描述符（handle）（用于识别每一个事件，如socketfd）
* 同步事件多路分离器（event demultiplexer)
* 事件处理器(event handler)(接口类)
* 具体的事件处理器（concrete event handler)（上面接口类的具体实现）
* Reactor管理器（reactor）
同步事件多路分离器一般在linux中用select、poll、epoll，等待一个或多个事件的发生，Reactor管理器使用同步事件多路分离器来等待事件发生，一旦事件发生，Reactor先分离每个事件，然后调度事件处理器（event_handler)来处理这个事件

