cmake_minimum_required(VERSION 3.20)
project(openz64)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED TRUE)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

set(OZ64_CMAKE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
list(APPEND CMAKE_MODULE_PATH "${OZ64_CMAKE_PATH}/utilities")

if(CMAKE_SYSTEM_NAME STREQUAL "Windows")
    set(OZ64_TARGET_PLATFORM "windows")
endif()

include("${OZ64_CMAKE_PATH}/platform/${OZ64_TARGET_PLATFORM}.cmake")

add_subdirectory("libraries")

include("${OZ64_CMAKE_PATH}/target/libultra.cmake")
include("${OZ64_CMAKE_PATH}/target/openz64.cmake")