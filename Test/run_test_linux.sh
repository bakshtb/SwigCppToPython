#!/bin/bash

echo "----------------------------------------------------"
echo "Copying files to the test folder..."
cp ../Release/Rectangle.py .
cp ../Release/_Rectangle.so .

echo "Running the test script..."
echo "----------------------------------------------------"

python3 test.py

echo "----------------------------------------------------"
echo "Done!"
echo "----------------------------------------------------"
