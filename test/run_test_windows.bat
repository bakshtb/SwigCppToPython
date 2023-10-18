@echo off
echo ----------------------------------------------------
echo Copying files to the test folder...
xcopy /Y ..\output\Rectangle.py . > nul
xcopy /Y ..\output\_Rectangle.pyd . > nul

echo Running the test script...

echo ----------------------------------------------------
python test.py
echo ----------------------------------------------------

echo Done!
echo ----------------------------------------------------