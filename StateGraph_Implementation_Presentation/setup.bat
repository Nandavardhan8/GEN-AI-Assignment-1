@echo off
REM =========================================
REM Setup Script for StateGraph Implementation
REM Windows Batch File
REM =========================================

echo.
echo ========================================
echo StateGraph Setup Script (Windows)
echo ========================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Python is not installed or not in PATH
    echo Please install Python 3.8+ from python.org
    pause
    exit /b 1
)

echo [OK] Python is installed
python --version
echo.

REM Check if pip is available
python -m pip --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] pip is not available
    echo Run: python -m pip install --upgrade pip
    pause
    exit /b 1
)

echo [OK] pip is available
echo.

REM Install requirements
echo [INFO] Installing dependencies from requirements.txt...
echo.

python -m pip install -r requirements.txt

if errorlevel 1 (
    echo [ERROR] Installation failed!
    pause
    exit /b 1
)

echo.
echo ========================================
echo Installation Complete!
echo ========================================
echo.
echo Next steps:
echo 1. Create .env file from .env.example:
echo    copy .env.example .env
echo 2. Edit .env with your API credentials
echo 3. Open Jupyter:
echo    jupyter notebook
echo 4. Open StateGraph_Implementation_Walkthrough.ipynb
echo.

pause
