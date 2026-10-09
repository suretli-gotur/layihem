@echo off
chcp 65001 >nul
title Gotur - sifaris et, ozun gotur
cd /d "%~dp0"

where node >nul 2>nul
if errorlevel 1 (
  echo.
  echo   [X] Node.js tapilmadi.
  echo       Node.js 22.5+ quraşdirin: https://nodejs.org
  echo.
  pause
  exit /b 1
)

echo.
echo   Gotur ise salinir... Brauzer avtomatik acilacaq.
echo   Dayandirmaq ucun bu pencerede Ctrl+C basın.
echo.

start "" http://127.0.0.1:4173/
node server/index.js

echo.
echo   Server dayandi.
pause
