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
 if %type% = 1 (GOTO WEBSITECHECK)
 if %type% = 2 (GOTO IPCHECK)

 pause

 :WEBSITECHECK

set site=
set /p %site% = Enter URL or shortcut:

REM shortcuts

if %site% = fb (ping facebook.com)
if %site% = t (ping twitter.com)
if %site% = insta (ping instagram.com)
if %site% = yt (ping youtube.com)
if %site% = r (ping reddit.com)

if %site% !==! fb (GOTO OTHERSITE)
if %site% !==! t (GOTO OTHERSITE)
if %site% !==! insta (GOTO OTHERSITE)
if %site% !==! yt (GOTO OTHERSITE)
if %site% !==! r (GOTO OTHERSITE)

:OTHERSITE

ping %site%

pause