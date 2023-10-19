#!/bin/bash

echo "Building the SwigCppToPython project..."

# Specify the build directory (you can adjust the name if needed)
BUILD_DIR="build"

# Create the build directory if it doesn't exist
mkdir -p "$BUILD_DIR"

# Change to the build directory
cd "$BUILD_DIR"

# Run CMake to generate build files with "Release" configuration
cmake -DCMAKE_BUILD_TYPE=Release ..

# Build the project with the "Release" configuration
cmake --build . --target install --config Release

# Return to the project directory
cd ..

echo "Build completed in 'Release' configuration."
