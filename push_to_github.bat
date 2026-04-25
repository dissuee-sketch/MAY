@echo off
cd /d C:\Users\USER\Downloads\notebooklm
git add .
git commit -m "update: %date% %time%"
git push
echo.
echo 完成！已同步到 GitHub。
pause
