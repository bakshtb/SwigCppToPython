# Set the minimum required version of CMake.
cmake_minimum_required(VERSION 3.13)

if(POLICY CMP0078)
  cmake_policy(SET CMP0078 NEW)
endif()

if(POLICY CMP0086)
  cmake_policy(SET CMP0086 NEW)
endif()

project(RectangleProject)

# Set the build type to Release
set(CMAKE_BUILD_TYPE "Release")

# Find Python and SWIG.
find_package(SWIG REQUIRED)
include(${SWIG_USE_FILE})

find_package(Python3 REQUIRED COMPONENTS Interpreter Development)

# Define the source files for the project
set(src
    Rectangle.cpp
    Rectangle.i
    Rectangle.h
)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${Python3_INCLUDE_DIRS})

# Set the SWIG module name
set_property(SOURCE Rectangle.i PROPERTY SWIG_MODULE_NAME Rectangle)

# Generate the SWIG wrapper.
set(CMAKE_SWIG_OUTDIR ${CMAKE_CURRENT_SOURCE_DIR}/Release)
set_source_files_properties(Rectangle.i PROPERTIES CPLUSPLUS ON)
swig_add_library(Rectangle LANGUAGE python SOURCES ${src})
swig_link_libraries(Rectangle Python3::Python)

set_target_properties(Rectangle PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SWIG_OUTDIR})

# Define the installation rules.
install(TARGETS Rectangle DESTINATION ${CMAKE_CURRENT_SOURCE_DIR})

if(Python3_FOUND)
    # Define ANSI color escape codes
    string(ASCII 27 Esc)
    set(Green "${Esc}[32m")
    set(Red "${Esc}[31m")
    set(Reset "${Esc}[0m")

    # Print the Python version in green
    message("-- ${Green}${Bold}Python Found:${Reset} Python Version ${Python3_VERSION}")
else()
    # Print "Python3 not found" in red
    message("-- ${Red}Python3 not found${Reset}")
endif()
