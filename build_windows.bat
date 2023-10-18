@echo off
echo Building the SwigCppToPython project...

:: Specify the build directory (you can adjust the name if needed)
set "BUILD_DIR=build"

:: Create the build directory if it doesn't exist
if not exist %BUILD_DIR% mkdir %BUILD_DIR%

:: Change to the build directory
cd %BUILD_DIR%

cmake ..

:: Build the project with the "Release" configuration
cmake --build . --target INSTALL --config Release

:: Return to the project directory
cd ..

echo Build completed in "Release" configuration.
