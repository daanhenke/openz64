cmake_minimum_required(VERSION 3.20)
project(openz64 VERSION 0.0.1)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED TRUE)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

set(OZ64_CMAKE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
list(APPEND CMAKE_MODULE_PATH "${OZ64_CMAKE_PATH}/utilities")

if(CMAKE_SYSTEM_NAME STREQUAL "Windows")
    set(OZ64_TARGET_PLATFORM "windows")
elseif(CMAKE_SYSTEM_NAME STREQUAL "Linux")
    set(OZ64_TARGET_PLATFORM "linux")
endif()

include("${OZ64_CMAKE_PATH}/platform/base.cmake")
include("${OZ64_CMAKE_PATH}/platform/${OZ64_TARGET_PLATFORM}.cmake")

add_subdirectory("libraries")
#add_subdirectory("external/OTRExporter")

include("${OZ64_CMAKE_PATH}/target/libultra.cmake")
include("${OZ64_CMAKE_PATH}/target/openz64.cmake")

#add_custom_command(
#    TARGET openz64
#    POST_BUILD
#    COMMENT "Copying assets"
#    COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_SOURCE_DIR}/assets $<TARGET_FILE_DIR:openz64>/assets
#)
openz64_platform_customize_targets()