@echo off
cd /d "%~dp0"
echo.
echo Comic Voice Reader
echo Open: http://localhost:8000
echo.
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
echo Python ne nayden.
echo Ustanovi Python ili zapusti komandu: py -m http.server 8000
pause
