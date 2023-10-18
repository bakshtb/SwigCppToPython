#!/bin/bash

echo "----------------------------------------------------"
echo "Copying files to the test folder..."
cp ../Release/Rectangle.py .
cp ../Release/Release/_Rectangle.so .

echo "Running the test script..."
echo "----------------------------------------------------"

python test.py

echo "----------------------------------------------------"
echo "Done!"
echo "----------------------------------------------------"
