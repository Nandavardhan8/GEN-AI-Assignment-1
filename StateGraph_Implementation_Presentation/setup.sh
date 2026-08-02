#!/bin/bash
# =========================================
# Setup Script for StateGraph Implementation
# Linux/Mac Bash
# =========================================

echo ""
echo "========================================"
echo "StateGraph Setup Script (Linux/Mac)"
echo "========================================"
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "[ERROR] Python 3 is not installed"
    echo "Please install Python 3.8+ from python.org"
    exit 1
fi

echo "[OK] Python is installed:"
python3 --version
echo ""

# Check if pip is available
if ! command -v pip3 &> /dev/null; then
    echo "[ERROR] pip3 is not available"
    echo "Run: python3 -m pip install --upgrade pip"
    exit 1
fi

echo "[OK] pip3 is available:"
pip3 --version
echo ""

# Install requirements
echo "[INFO] Installing dependencies from requirements.txt..."
echo ""

pip3 install -r requirements.txt

if [ $? -ne 0 ]; then
    echo "[ERROR] Installation failed!"
    exit 1
fi

echo ""
echo "========================================"
echo "Installation Complete!"
echo "========================================"
echo ""
echo "Next steps:"
echo "1. .env file already exists with credentials"
echo "2. Open Jupyter:"
echo "   jupyter notebook"
echo "3. Open StateGraph_Implementation_Walkthrough.ipynb"
echo ""
