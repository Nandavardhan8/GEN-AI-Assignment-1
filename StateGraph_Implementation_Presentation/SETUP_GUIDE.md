# Environment Setup Guide

## Prerequisites
- Python 3.8+ installed
- pip (Python package manager)
- Windows/Linux/Mac terminal or PowerShell

## Installation Steps

### Option 1: Quick Install (Recommended)

1. **Navigate to the project directory:**
```bash
cd "StateGraph_Implementation_Presentation"
```

2. **Install all dependencies at once:**
```bash
pip install -r requirements.txt
```

3. **Verify installation:**
```bash
pip list | findstr langchain
pip list | findstr langgraph
```

### Option 2: Manual Installation

Install each package individually:
```bash
pip install langchain
pip install langgraph
pip install langchain-anthropic
pip install python-dotenv
pip install anthropic
pip install jupyter
```

---

## Troubleshooting

### If pip is not found:
```bash
python -m pip install -r requirements.txt
```

### If you get permission errors:
```bash
pip install --user -r requirements.txt
```

### To upgrade pip first:
```bash
python -m pip install --upgrade pip
```

### Check Python version:
```bash
python --version
```

---

## Create .env File

Before running the notebook, the `.env` file is already provided with API credentials:

**File: `.env`**
```
KEY=sk-zK7xMXa2pANc64xuf4oaTA
BASE_URL=https://llmgw-wp.tekstac.com
MODEL=global.anthropic.claude-haiku-4-5-20251001-v1:0
```

---

## Run the Notebook

### Option 1: VS Code
1. Open `StateGraph_Implementation_Walkthrough.ipynb` in VS Code
2. Select Python kernel (if prompted)
3. Click "Run All" or run cells one by one

### Option 2: Jupyter Lab/Notebook
```bash
jupyter notebook
```
Then navigate to `StateGraph_Implementation_Walkthrough.ipynb`

### Option 3: Command Line
```bash
jupyter nbconvert --to notebook --execute StateGraph_Implementation_Walkthrough.ipynb
```

---

## Verify Everything Works

Run this quick test:

```python
# Quick test to verify all imports work
try:
    from langchain_anthropic import ChatAnthropic
    from langgraph.graph import StateGraph, START, END
    from typing import TypedDict
    from dotenv import load_dotenv
    print("✅ All imports successful!")
except ImportError as e:
    print(f"❌ Import error: {e}")
```

---

## System Requirements

| Component | Minimum | Recommended |
|-----------|---------|-------------|
| Python | 3.8 | 3.10+ |
| RAM | 2GB | 4GB+ |
| Disk Space | 500MB | 1GB+ |
| Internet | Required (for API calls) | Required |

---

## Uninstall (if needed)

```bash
pip uninstall -r requirements.txt -y
```

---

## Upgrade Packages

```bash
pip install --upgrade -r requirements.txt
```

---

**Last Updated:** August 2, 2026
**For:** StateGraph Implementation Walkthrough Presentation
**By:** Nandavardhan Doodala
