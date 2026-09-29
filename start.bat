@echo off
cd /d "%~dp0"
echo Comic Voice Reader v3
echo Open: http://localhost:8000
where py >nul 2>&1
if %errorlevel%==0 (
  start "" "http://localhost:8000"
  py -m http.server 8000
  exit /b
)
where python >nul 2>&1
if %errorlevel%==0 (
  start "" "http://localhost:8000"
  python -m http.server 8000
  exit /b
)
echo Python not found.
pause
