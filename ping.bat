@echo off

echo Welcome! This program will check if a website or server is up.
echo
echo Shortcuts:
echo 'facebook' for facebook.com
echo 'twitter' for twitter.com
echo 'instagram' for instagram.com
echo 'youtube' for youtube.com
echo 'reddit' for reddit.com 

echo -------------------------------------------------------------
echo Type '1' to check a website or '2' to check an I.P. address.
echo -------------------------------------------------------------

%type% = Enter selection: 
 if %type% = 1 (goto WEBSITECHECK)
 if %type% = 2 (goto IPCHECK)