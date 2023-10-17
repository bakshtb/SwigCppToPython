
# Set the minimum required version of CMake.
cmake_minimum_required(VERSION 3.12)

project(RectangleProject)

# Set the build type to Release
set(CMAKE_BUILD_TYPE "Release")

set(Python_INCLUDE_DIRS "C:/Program Files/Python310/include")
set(Python_LIB "C:/Program Files/Python310/libs/python310.lib")

# Find Python and SWIG.
find_package(SWIG REQUIRED)
include(${SWIG_USE_FILE})

find_package(Python3 REQUIRED)

# Define the source files for the project
set(src
    Rectangle.cpp
    Rectangle.i
	Rectangle.h
)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${Python_INCLUDE_DIRS})

# Generate the SWIG wrapper.
set(CMAKE_SWIG_OUTDIR ${CMAKE_CURRENT_SOURCE_DIR}/Release)
set_source_files_properties(Rectangle.i PROPERTIES CPLUSPLUS ON)
swig_add_library(rectangle LANGUAGE python SOURCES ${src})
swig_link_libraries(rectangle ${Python_LIB})

set_target_properties(_rectangle PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SWIG_OUTDIR})

# Define the installation rules.
install(TARGETS _rectangle DESTINATION ${CMAKE_CURRENT_SOURCE_DIR})
