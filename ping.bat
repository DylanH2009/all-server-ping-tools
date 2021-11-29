@echo off 

:START

echo Enter what you would like to test. 
echo ----------------------------------
echo 1 = Website
echo 2 = I.P. Address
echo ----------------------------------
set "select=Enter selection: "

if %select% EQ "1" GOTO WEBCHECK
if %select% EQ "2" GOTO IPCHECK
if %select% NEQ "1" "2" GOTO START

:WEBCHECK

echo Enter the url you would like to check:
set "url=URL = "
ping %url% | find "TTL=" >nul
if errorlevel 1 (
    echo Site is offline
) else (
    echo Site is online
)