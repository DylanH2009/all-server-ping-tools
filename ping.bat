@echo off

echo Welcome! This program will check if a website or server is up.
echo
echo Shortcuts:
echo 'fb' for facebook.com
echo 't' for twitter.com
echo 'insta' for instagram.com
echo 'yt' for youtube.com
echo 'r' for reddit.com 

echo -------------------------------------------------------------
echo Type '1' to check a website or '2' to check an I.P. address.
echo -------------------------------------------------------------

set type=
set /p %type% = Enter selection: 
 if %type% = 1 (goto WEBSITECHECK)
 if %type% = 2 (goto IPCHECK)

 :WEBSITECHECK

set site=
set /p %site% = Enter URL or shortcut:

REM shortcuts

if %site% = fb (ping facebook.com | find "TTL=" >nul
if errorlevel 1 (
    echo Host is not reachable 
) else (
    echo Host available 
))

if %site% = t (ping twitter.com | find "TTL=" >nul
if errorlevel 1 (
    echo Host is not reachable 
) else (
    echo Host available 
))

if %site% = insta (ping instagram.com | find "TTL=" >nul
if errorlevel 1 (
    echo Host is not reachable 
) else (
    echo Host available 
))

if %site% = yt (ping youtube.com | find "TTL=" >nul
if errorlevel 1 (
    echo Host is not reachable 
) else (
    echo Host available 
))

if %site% = r (ping reddit.com | find "TTL=" >nul
if errorlevel 1 (
    echo Host is not reachable 
) else (
    echo Host available 
))

if not %site%==fb if not %site%==t if not %site%==insta if not %site%==yt if not %site%==r (
    ping %site% | find "TTL=" >nul 
    if errorlevel 1 (
    echo Host is not reachable 
) else (
    echo Host available 
))