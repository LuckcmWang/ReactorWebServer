# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wcm/workspace/ReactorWebServer/webserver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wcm/workspace/ReactorWebServer/webserver

# Include any dependencies generated for this target.
include CMakeFiles/server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server.dir/flags.make

CMakeFiles/server.dir/epoll_demultiplexer.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/epoll_demultiplexer.cpp.o: epoll_demultiplexer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wcm/workspace/ReactorWebServer/webserver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/server.dir/epoll_demultiplexer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/epoll_demultiplexer.cpp.o -c /home/wcm/workspace/ReactorWebServer/webserver/epoll_demultiplexer.cpp

CMakeFiles/server.dir/epoll_demultiplexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/epoll_demultiplexer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wcm/workspace/ReactorWebServer/webserver/epoll_demultiplexer.cpp > CMakeFiles/server.dir/epoll_demultiplexer.cpp.i

CMakeFiles/server.dir/epoll_demultiplexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/epoll_demultiplexer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wcm/workspace/ReactorWebServer/webserver/epoll_demultiplexer.cpp -o CMakeFiles/server.dir/epoll_demultiplexer.cpp.s

CMakeFiles/server.dir/epoll_demultiplexer.cpp.o.requires:

.PHONY : CMakeFiles/server.dir/epoll_demultiplexer.cpp.o.requires

CMakeFiles/server.dir/epoll_demultiplexer.cpp.o.provides: CMakeFiles/server.dir/epoll_demultiplexer.cpp.o.requires
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/epoll_demultiplexer.cpp.o.provides.build
.PHONY : CMakeFiles/server.dir/epoll_demultiplexer.cpp.o.provides

CMakeFiles/server.dir/epoll_demultiplexer.cpp.o.provides.build: CMakeFiles/server.dir/epoll_demultiplexer.cpp.o


CMakeFiles/server.dir/listen_handle.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/listen_handle.cpp.o: listen_handle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wcm/workspace/ReactorWebServer/webserver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/server.dir/listen_handle.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/listen_handle.cpp.o -c /home/wcm/workspace/ReactorWebServer/webserver/listen_handle.cpp

CMakeFiles/server.dir/listen_handle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/listen_handle.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wcm/workspace/ReactorWebServer/webserver/listen_handle.cpp > CMakeFiles/server.dir/listen_handle.cpp.i

CMakeFiles/server.dir/listen_handle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/listen_handle.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wcm/workspace/ReactorWebServer/webserver/listen_handle.cpp -o CMakeFiles/server.dir/listen_handle.cpp.s

CMakeFiles/server.dir/listen_handle.cpp.o.requires:

.PHONY : CMakeFiles/server.dir/listen_handle.cpp.o.requires

CMakeFiles/server.dir/listen_handle.cpp.o.provides: CMakeFiles/server.dir/listen_handle.cpp.o.requires
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/listen_handle.cpp.o.provides.build
.PHONY : CMakeFiles/server.dir/listen_handle.cpp.o.provides

CMakeFiles/server.dir/listen_handle.cpp.o.provides.build: CMakeFiles/server.dir/listen_handle.cpp.o


CMakeFiles/server.dir/reactor.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/reactor.cpp.o: reactor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wcm/workspace/ReactorWebServer/webserver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/server.dir/reactor.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/reactor.cpp.o -c /home/wcm/workspace/ReactorWebServer/webserver/reactor.cpp

CMakeFiles/server.dir/reactor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/reactor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wcm/workspace/ReactorWebServer/webserver/reactor.cpp > CMakeFiles/server.dir/reactor.cpp.i

CMakeFiles/server.dir/reactor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/reactor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wcm/workspace/ReactorWebServer/webserver/reactor.cpp -o CMakeFiles/server.dir/reactor.cpp.s

CMakeFiles/server.dir/reactor.cpp.o.requires:

.PHONY : CMakeFiles/server.dir/reactor.cpp.o.requires

CMakeFiles/server.dir/reactor.cpp.o.provides: CMakeFiles/server.dir/reactor.cpp.o.requires
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/reactor.cpp.o.provides.build
.PHONY : CMakeFiles/server.dir/reactor.cpp.o.provides

CMakeFiles/server.dir/reactor.cpp.o.provides.build: CMakeFiles/server.dir/reactor.cpp.o


CMakeFiles/server.dir/reactor_impl.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/reactor_impl.cpp.o: reactor_impl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wcm/workspace/ReactorWebServer/webserver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/server.dir/reactor_impl.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/reactor_impl.cpp.o -c /home/wcm/workspace/ReactorWebServer/webserver/reactor_impl.cpp

CMakeFiles/server.dir/reactor_impl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/reactor_impl.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wcm/workspace/ReactorWebServer/webserver/reactor_impl.cpp > CMakeFiles/server.dir/reactor_impl.cpp.i

CMakeFiles/server.dir/reactor_impl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/reactor_impl.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wcm/workspace/ReactorWebServer/webserver/reactor_impl.cpp -o CMakeFiles/server.dir/reactor_impl.cpp.s

CMakeFiles/server.dir/reactor_impl.cpp.o.requires:

.PHONY : CMakeFiles/server.dir/reactor_impl.cpp.o.requires

CMakeFiles/server.dir/reactor_impl.cpp.o.provides: CMakeFiles/server.dir/reactor_impl.cpp.o.requires
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/reactor_impl.cpp.o.provides.build
.PHONY : CMakeFiles/server.dir/reactor_impl.cpp.o.provides

CMakeFiles/server.dir/reactor_impl.cpp.o.provides.build: CMakeFiles/server.dir/reactor_impl.cpp.o


CMakeFiles/server.dir/select_demultiplexer.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/select_demultiplexer.cpp.o: select_demultiplexer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wcm/workspace/ReactorWebServer/webserver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/server.dir/select_demultiplexer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/select_demultiplexer.cpp.o -c /home/wcm/workspace/ReactorWebServer/webserver/select_demultiplexer.cpp

CMakeFiles/server.dir/select_demultiplexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/select_demultiplexer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wcm/workspace/ReactorWebServer/webserver/select_demultiplexer.cpp > CMakeFiles/server.dir/select_demultiplexer.cpp.i

CMakeFiles/server.dir/select_demultiplexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/select_demultiplexer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wcm/workspace/ReactorWebServer/webserver/select_demultiplexer.cpp -o CMakeFiles/server.dir/select_demultiplexer.cpp.s

CMakeFiles/server.dir/select_demultiplexer.cpp.o.requires:

.PHONY : CMakeFiles/server.dir/select_demultiplexer.cpp.o.requires

CMakeFiles/server.dir/select_demultiplexer.cpp.o.provides: CMakeFiles/server.dir/select_demultiplexer.cpp.o.requires
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/select_demultiplexer.cpp.o.provides.build
.PHONY : CMakeFiles/server.dir/select_demultiplexer.cpp.o.provides

CMakeFiles/server.dir/select_demultiplexer.cpp.o.provides.build: CMakeFiles/server.dir/select_demultiplexer.cpp.o


CMakeFiles/server.dir/server.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/server.cpp.o: server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wcm/workspace/ReactorWebServer/webserver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/server.dir/server.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/server.cpp.o -c /home/wcm/workspace/ReactorWebServer/webserver/server.cpp

CMakeFiles/server.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wcm/workspace/ReactorWebServer/webserver/server.cpp > CMakeFiles/server.dir/server.cpp.i

CMakeFiles/server.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wcm/workspace/ReactorWebServer/webserver/server.cpp -o CMakeFiles/server.dir/server.cpp.s

CMakeFiles/server.dir/server.cpp.o.requires:

.PHONY : CMakeFiles/server.dir/server.cpp.o.requires

CMakeFiles/server.dir/server.cpp.o.provides: CMakeFiles/server.dir/server.cpp.o.requires
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/server.cpp.o.provides.build
.PHONY : CMakeFiles/server.dir/server.cpp.o.provides

CMakeFiles/server.dir/server.cpp.o.provides.build: CMakeFiles/server.dir/server.cpp.o


CMakeFiles/server.dir/sock_handle.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/sock_handle.cpp.o: sock_handle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wcm/workspace/ReactorWebServer/webserver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/server.dir/sock_handle.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/sock_handle.cpp.o -c /home/wcm/workspace/ReactorWebServer/webserver/sock_handle.cpp

CMakeFiles/server.dir/sock_handle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/sock_handle.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wcm/workspace/ReactorWebServer/webserver/sock_handle.cpp > CMakeFiles/server.dir/sock_handle.cpp.i

CMakeFiles/server.dir/sock_handle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/sock_handle.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wcm/workspace/ReactorWebServer/webserver/sock_handle.cpp -o CMakeFiles/server.dir/sock_handle.cpp.s

CMakeFiles/server.dir/sock_handle.cpp.o.requires:

.PHONY : CMakeFiles/server.dir/sock_handle.cpp.o.requires

CMakeFiles/server.dir/sock_handle.cpp.o.provides: CMakeFiles/server.dir/sock_handle.cpp.o.requires
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/sock_handle.cpp.o.provides.build
.PHONY : CMakeFiles/server.dir/sock_handle.cpp.o.provides

CMakeFiles/server.dir/sock_handle.cpp.o.provides.build: CMakeFiles/server.dir/sock_handle.cpp.o


CMakeFiles/server.dir/threadpool.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/threadpool.cpp.o: threadpool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wcm/workspace/ReactorWebServer/webserver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/server.dir/threadpool.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/threadpool.cpp.o -c /home/wcm/workspace/ReactorWebServer/webserver/threadpool.cpp

CMakeFiles/server.dir/threadpool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/threadpool.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wcm/workspace/ReactorWebServer/webserver/threadpool.cpp > CMakeFiles/server.dir/threadpool.cpp.i

CMakeFiles/server.dir/threadpool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/threadpool.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wcm/workspace/ReactorWebServer/webserver/threadpool.cpp -o CMakeFiles/server.dir/threadpool.cpp.s

CMakeFiles/server.dir/threadpool.cpp.o.requires:

.PHONY : CMakeFiles/server.dir/threadpool.cpp.o.requires

CMakeFiles/server.dir/threadpool.cpp.o.provides: CMakeFiles/server.dir/threadpool.cpp.o.requires
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/threadpool.cpp.o.provides.build
.PHONY : CMakeFiles/server.dir/threadpool.cpp.o.provides

CMakeFiles/server.dir/threadpool.cpp.o.provides.build: CMakeFiles/server.dir/threadpool.cpp.o


# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/epoll_demultiplexer.cpp.o" \
"CMakeFiles/server.dir/listen_handle.cpp.o" \
"CMakeFiles/server.dir/reactor.cpp.o" \
"CMakeFiles/server.dir/reactor_impl.cpp.o" \
"CMakeFiles/server.dir/select_demultiplexer.cpp.o" \
"CMakeFiles/server.dir/server.cpp.o" \
"CMakeFiles/server.dir/sock_handle.cpp.o" \
"CMakeFiles/server.dir/threadpool.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

server: CMakeFiles/server.dir/epoll_demultiplexer.cpp.o
server: CMakeFiles/server.dir/listen_handle.cpp.o
server: CMakeFiles/server.dir/reactor.cpp.o
server: CMakeFiles/server.dir/reactor_impl.cpp.o
server: CMakeFiles/server.dir/select_demultiplexer.cpp.o
server: CMakeFiles/server.dir/server.cpp.o
server: CMakeFiles/server.dir/sock_handle.cpp.o
server: CMakeFiles/server.dir/threadpool.cpp.o
server: CMakeFiles/server.dir/build.make
server: CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wcm/workspace/ReactorWebServer/webserver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server.dir/build: server

.PHONY : CMakeFiles/server.dir/build

CMakeFiles/server.dir/requires: CMakeFiles/server.dir/epoll_demultiplexer.cpp.o.requires
CMakeFiles/server.dir/requires: CMakeFiles/server.dir/listen_handle.cpp.o.requires
CMakeFiles/server.dir/requires: CMakeFiles/server.dir/reactor.cpp.o.requires
CMakeFiles/server.dir/requires: CMakeFiles/server.dir/reactor_impl.cpp.o.requires
CMakeFiles/server.dir/requires: CMakeFiles/server.dir/select_demultiplexer.cpp.o.requires
CMakeFiles/server.dir/requires: CMakeFiles/server.dir/server.cpp.o.requires
CMakeFiles/server.dir/requires: CMakeFiles/server.dir/sock_handle.cpp.o.requires
CMakeFiles/server.dir/requires: CMakeFiles/server.dir/threadpool.cpp.o.requires

.PHONY : CMakeFiles/server.dir/requires

CMakeFiles/server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server.dir/clean

CMakeFiles/server.dir/depend:
	cd /home/wcm/workspace/ReactorWebServer/webserver && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wcm/workspace/ReactorWebServer/webserver /home/wcm/workspace/ReactorWebServer/webserver /home/wcm/workspace/ReactorWebServer/webserver /home/wcm/workspace/ReactorWebServer/webserver /home/wcm/workspace/ReactorWebServer/webserver/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/server.dir/depend

