@echo off
title Launching Mall Kiosk...

:: 1. Force close any running Chrome instances so kiosk mode can take over cleanly
taskkill /f /im chrome.exe >nul 2>&1

echo Optimizing system environment...
timeout /t 2 >nul

:: 2. Launch Google Chrome in full-screen Kiosk Mode pointing to your live Vercel web app
start "" chrome.exe --kiosk "https://kiosk-website-localhost.vercel.app" --user-data-dir="C:\ChromeKioskProfile"

exit
