# =========================================
# Setup Script for StateGraph Implementation
# Windows PowerShell
# =========================================

Write-Host ""
Write-Host "========================================"
Write-Host "StateGraph Setup Script (PowerShell)" -ForegroundColor Cyan
Write-Host "========================================"
Write-Host ""

# Check if Python is installed
try {
    $pythonVersion = python --version 2>&1
    Write-Host "[OK] Python is installed: $pythonVersion" -ForegroundColor Green
} catch {
    Write-Host "[ERROR] Python is not installed or not in PATH" -ForegroundColor Red
    Write-Host "Please install Python 3.8+ from python.org"
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""

# Check if pip is available
try {
    $pipVersion = python -m pip --version 2>&1
    Write-Host "[OK] pip is available: $pipVersion" -ForegroundColor Green
} catch {
    Write-Host "[ERROR] pip is not available" -ForegroundColor Red
    Write-Host "Run: python -m pip install --upgrade pip"
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""

# Install requirements
Write-Host "[INFO] Installing dependencies from requirements.txt..." -ForegroundColor Yellow
Write-Host ""

python -m pip install -r requirements.txt

if ($LASTEXITCODE -ne 0) {
    Write-Host "[ERROR] Installation failed!" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "========================================"
Write-Host "Installation Complete!" -ForegroundColor Green
Write-Host "========================================"
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Create .env file from .env.example:"
Write-Host "   copy .env.example .env"
Write-Host ""
Write-Host "2. Edit .env with your API credentials"
Write-Host ""
Write-Host "3. Open Jupyter:"
Write-Host "   jupyter notebook"
Write-Host ""
Write-Host "4. Open StateGraph_Implementation_Walkthrough.ipynb"
Write-Host ""

Read-Host "Press Enter to exit"
