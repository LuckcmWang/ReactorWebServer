cmake_minimum_required(VERSION 2.8)

project(reactorwebserver)

aux_source_directory(. SRC_LIST)

add_executable(client ${SRC_LIST})

target_link_libraries (client pthread)

