@echo off
title Launching Mall Kiosk...

:: Close any existing Chrome instances to ensure kiosk mode locks properly
taskkill /f /im chrome.exe >nul 2>&1

echo Starting Chrome Kiosk Mode...
timeout /t 2 >nul

:: Launch Google Chrome in full-screen Kiosk Mode
start chrome.exe --kiosk "https://kiosk-website-localhost.vercel.app" --user-data-dir="C:\ChromeKioskProfile"

exit
