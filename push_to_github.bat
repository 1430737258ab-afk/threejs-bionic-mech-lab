@echo off
cd /d "%~dp0"
echo [1/5] Initializing Git...
git init
git checkout -b main
echo [2/5] Adding files...
git add .
echo [3/5] Committing...
git commit -m "feat: initial commit of threejs-bionic-mech-lab skill"
echo [4/5] Setting remote...
git remote remove origin 2>nul
git remote add origin https://github.com/1430737258ab-afk/threejs-bionic-mech-lab.git
echo [5/5] Pushing to GitHub...
git push -u origin main
echo.
echo Done!
pause
