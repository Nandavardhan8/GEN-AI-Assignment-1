# ⚡ QUICK START - 5 Minutes

## 🎯 Your Goal
Install dependencies and run the StateGraph notebook

---

## 📋 Step 1: Choose Your Operating System

### 🪟 Windows (Command Prompt)
```bash
setup.bat
```
That's it! The script will install everything.

### 🪟 Windows (PowerShell)
```powershell
powershell -ExecutionPolicy Bypass -File setup.ps1
```

### 🍎 macOS / 🐧 Linux
```bash
bash setup.sh
```

---

## ✅ Step 2: Verify Installation

After the script runs, test this in Python:

```python
from langchain_anthropic import ChatAnthropic
from langgraph.graph import StateGraph
print("✅ Setup successful!")
```

---

## 🚀 Step 3: Run the Notebook

### Option A: Jupyter Notebook (Easiest)
```bash
jupyter notebook StateGraph_Implementation_Walkthrough.ipynb
```

### Option B: VS Code
1. Install "Jupyter" extension
2. Open `StateGraph_Implementation_Walkthrough.ipynb`
3. Click "Run All"

### Option C: Jupyter Lab
```bash
jupyter lab
```

---

## 🎓 What You'll Learn

| Section | Time | What You'll See |
|---------|------|-----------------|
| 1-2 | 15 min | Imports & State Definition |
| 3-4 | 15 min | Nodes & Graph Building |
| 5-6 | 20 min | **Live LLM Execution** ✨ |
| 7 | 20 min | **Multi-turn Conversation** 🤖 |

**Total: ~70 minutes**

---

## ⚠️ If Something Goes Wrong

### "Module not found"
```bash
pip install -r requirements.txt
```

### "API Key error"
Make sure `.env` file exists with API key ✅

### "Permission denied"
```bash
pip install --user -r requirements.txt
```

---

## 📦 What Gets Installed

```
✅ langchain          → LLM framework
✅ langgraph          → StateGraph (the main course!)
✅ langchain-anthropic → Claude integration
✅ anthropic          → API SDK
✅ python-dotenv      → Load .env file
✅ jupyter            → Interactive notebooks
```

**Total size:** ~300-400 MB  
**Time:** 2-5 minutes depending on internet speed

---

## 🔐 Your API Credentials (Already Set)

The `.env` file is already created with:
```env
KEY=sk-zK7xMXa2pANc64xuf4oaTA
BASE_URL=https://llmgw-wp.tekstac.com
MODEL=global.anthropic.claude-haiku-4-5-20251001-v1:0
```

✅ Ready to use!

---

## 🎯 Next 5 Minutes

1. Run setup script (2 min)
2. Wait for installation (3 min)
3. Run `jupyter notebook`
4. Open notebook
5. Click "Run All" ▶️

---

## 🚨 Emergency Commands

**Clear everything and reinstall:**
```bash
pip uninstall -y langchain langgraph langchain-anthropic anthropic python-dotenv
pip install -r requirements.txt
```

**Check what's installed:**
```bash
pip list | grep -E "langchain|langgraph|anthropic"
```

**Update everything:**
```bash
pip install --upgrade -r requirements.txt
```

---

## 🎉 Success Indicators

After running Step 1, you should see:
```
✅ langchain - installed
✅ langgraph - installed
✅ langchain-anthropic - installed
✅ anthropic - installed
✅ python-dotenv - installed
✅ jupyter - installed
```

---

## 💡 Pro Tips

- 🔄 **First run will be slower** - downloading models
- 🌐 **Internet required** - for LLM API calls
- 📱 **Keep .env private** - contains API keys
- 🐍 **Python 3.8+** - check with `python --version`
- 💾 **3GB disk space** - recommended for dependencies

---

## ❓ Questions?

1. Read `SETUP_GUIDE.md` for detailed troubleshooting
2. Check `README.md` for complete documentation
3. Review notebook comments for code explanations

---

## 📞 Still Stuck?

**Command to check your system:**
```bash
python --version
pip --version
pip list | grep langchain
```

Share the output if asking for help!

---

**🚀 You've got this! Let's build some StateGraphs!**

---

*Last updated: August 2, 2026*  
*For: StateGraph Implementation Walkthrough*  
*By: Nandavardhan Doodala*
