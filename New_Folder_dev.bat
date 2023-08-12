@echo off

REM Prompt user to input folder name
set /p folderName=Enter the name of the folder:

REM Create the folder
mkdir %folderName%

REM Get current date and time
for /f "tokens=2 delims==" %%G in ('wmic os get localdatetime /value') do set "currentDateTime=%%G"
set currentDateTime=%currentDateTime:~0,8%-%currentDateTime:~8,6%

REM Create text file with folder name with current date and time as title
echo %folderName% > %folderName%\%currentDateTime%.txt
