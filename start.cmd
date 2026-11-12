@echo off
rem Starts CRATE.CO on this PC. XAMPP's MySQL must be running first.
cd /d "%~dp0"
if not exist .next\BUILD_ID call npm run build
start "CRATE.CO server" cmd /k npm run api
timeout /t 3 /nobreak >nul
start "" http://crateco.localhost:3104
npm run start
