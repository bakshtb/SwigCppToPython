@echo off
echo ----------------------------------------------------
echo Copying files to the test folder...
xcopy /Y ..\Release\Rectangle.py . > nul
xcopy /Y ..\Release\Release\_Rectangle.pyd . > nul

echo Running the test script...

echo ----------------------------------------------------
python test.py
echo ----------------------------------------------------

echo Done!
echo ----------------------------------------------------