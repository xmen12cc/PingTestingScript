@echo off
echo Checking network connectivity...
set ipList=8.8.8.8 1.1.1.1 www.google.com

for %%i in (%ipList%) do (
    echo Pinging %%i...
    ping -n 4 %%i
    echo.
)

echo Network test complete.
pause