@echo off
title Jan Ken Panic — Privacy Policy vers GitHub
cd /d "%~dp0"

echo.
echo  ================================
echo   Envoi vers GitHub...
echo   jankenpanic/privacy.html
echo  ================================
echo.

git config --global user.email "andreocyril@gmail.com"
git config --global user.name "HimitsuKuro"
if exist ".git" rmdir /s /q ".git"
git init
git add .
git commit -m "Privacy policy - Jan Ken Panic"
git branch -M main
git remote add origin https://github.com/HimitsuKuro/jankenpanic.git
git push -u origin main

echo.
echo  ================================
echo   Termine !
echo   URL : https://himitsukuro.github.io/jankenpanic/privacy.html
echo  ================================
pause
