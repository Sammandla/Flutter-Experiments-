@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"

:menu
cls
echo ========================================================
echo          FLUTTER EXPERIMENTS RUNNER (1 - 10)
echo ========================================================
echo  [1]  Experiment 1  : Fruit Market (Widgets and Layouts)
echo  [2]  Experiment 2  : Responsive E-Commerce Product Catalog
echo  [3]  Experiment 3  : Interactive Search and Real-Time Filter
echo  [4]  Experiment 4  : Car Mileage Calculator (Form Validation)
echo  [5]  Experiment 5  : User Profile (Named Routes and Navigation)
echo  [6]  Experiment 6  : Student Records (SQLite Persistence)
echo  [7]  Experiment 7  : Student Registration (Cloud Firestore)
echo  [8]  Experiment 8  : Student Search (Cloud Firestore Query)
echo  [9]  Experiment 9  : Student Update (Cloud Firestore Update)
echo  [10] Experiment 10 : Secure Login / Auth (SHA-256 and Salt)
echo ========================================================
echo  [Q]  Exit
echo ========================================================
set /p exp="Select an Experiment number (1-10) or Q to exit: "

if /i "%exp%"=="Q" goto end
if "%exp%"=="" goto menu

set "exp_dir=Experiment-%exp%"
if not exist "%exp_dir%" (
    echo.
    echo Invalid selection: %exp%
    timeout /t 2 >nul
    goto menu
)

echo.
echo Select target device:
echo   [1] Chrome (Web) - Recommended
echo   [2] Windows Desktop
echo   [3] Edge (Web)
echo   [4] Default Device
set /p dev="Device choice [1-4] (default is 1): "

set "device_flag=-d chrome"
if "%dev%"=="2" set "device_flag=-d windows"
if "%dev%"=="3" set "device_flag=-d edge"
if "%dev%"=="4" set "device_flag="

echo.
echo Launching %exp_dir%...
cd "%exp_dir%"
flutter run %device_flag%
cd ..
echo.
pause
goto menu

:end
endlocal
