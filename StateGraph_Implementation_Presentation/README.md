# StateGraph Implementation Walkthrough 🤖

**Presenter:** Nandavardhan Doodala  
**Topic:** StateGraph Implementation Walkthrough  
**Date:** August 2026

---

## 🚀 Quick Start (5 Minutes)

### Step 1: Install Dependencies
**Windows (Command Prompt):**
```bash
setup.bat
```

**Windows (PowerShell):**
```powershell
powershell -ExecutionPolicy Bypass -File setup.ps1
```

**Mac/Linux:**
```bash
bash setup.sh
```

### Step 2: Open Notebook
```bash
jupyter notebook StateGraph_Implementation_Walkthrough.ipynb
```

### Step 3: Run All Cells
Click "Run All" or run cells one at a time

---

## 📁 What's in This Folder

| File | Purpose |
|------|---------|
| `StateGraph_Implementation_Walkthrough.ipynb` | ⭐ **Main presentation notebook** |
| `requirements.txt` | All Python dependencies |
| `.env` | ✅ Pre-configured API credentials |
| `.env.example` | Template for .env |
| `setup.bat` | Windows installer script |
| `setup.ps1` | PowerShell installer script |
| `setup.sh` | Mac/Linux installer script |
| `QUICK_START.md` | 5-minute quick guide |
| `SETUP_GUIDE.md` | Detailed installation help |
| `README.md` | Complete reference (this file) |

---

## 📦 What Gets Installed

- **langchain** - LLM framework
- **langgraph** - StateGraph (the main course!)
- **langchain-anthropic** - Claude integration
- **anthropic** - Anthropic API SDK
- **python-dotenv** - Load .env files
- **jupyter** - Interactive notebooks

---

## 🎓 Notebook Contents

### Section 1️⃣: Import Required Libraries (2 min)
- Package installation verification
- All necessary imports
- LLM initialization

### Section 2️⃣: Define State Schema (5 min)
- ReviewState - Simple sequential state
- RouterState - Conditional routing state
- ConversationState - Multi-turn conversation state

### Section 3️⃣: Create Node Functions (5 min)
- Sequential nodes: review → sentiment → reply
- Routing nodes: science, history, general
- Router function for classification

### Section 4️⃣: Build the StateGraph (5 min)
- Initialize StateGraph with state class
- Add nodes with add_node()
- Example workflows for each pattern

### Section 5️⃣: Add Edges and Conditional Logic (5 min)
- Linear edges (add_edge)
- Conditional edges (add_conditional_edges)
- START and END special nodes

### Section 6️⃣: Compile and Test (20 min)
- Sequential pipeline execution ✨
- Conditional router testing with 3 test cases ✨

### Section 7️⃣: Execute Multi-turn Interactions (20 min)
- Travel planner agent with MemorySaver
- 3-turn conversation demonstration 🤖
- Thread ID for conversation tracking

**Total Runtime: ~60-90 minutes**

---

## 🎯 Three Core Patterns Explained

### Pattern 1: Sequential Pipeline
```
START → review_node → sentiment_node → reply_node → END
```
**Use Case:** Process data through fixed pipeline  
**When to Use:** Multi-step data processing, workflows with known steps  
**Example:** Product review → sentiment classification → brand reply

### Pattern 2: Conditional Routing
```
START → route_question() → [science_node | history_node | general_node] → END
```
**Use Case:** Dynamic routing based on input classification  
**When to Use:** Multiple different processing paths, intelligent branching  
**Example:** Route questions to different personas

### Pattern 3: Multi-Turn Conversation
```
Agent ↔ User (with MemorySaver and thread_id)
```
**Use Case:** Conversational agents with memory  
**When to Use:** Chatbots, interactive assistants, multi-turn workflows  
**Example:** Travel planning agent remembering user preferences

---

## 🔐 API Configuration

The `.env` file contains:
```env
KEY=sk-zK7xMXa2pANc64xuf4oaTA
BASE_URL=https://llmgw-wp.tekstac.com
MODEL=global.anthropic.claude-haiku-4-5-20251001-v1:0
```

**Available Models:**
- `global.anthropic.claude-haiku-4-5-20251001-v1:0` - Fast, cost-effective ⚡
- `global.anthropic.claude-opus-4-5-20251101-v1:0` - Balanced, powerful ⚖️
- `global.anthropic.claude-sonnet-4-6` - Latest, high quality ✨

---

## ✅ Verification Checklist

After installation, verify everything works:

```bash
# Check Python
python --version

# Check pip
pip --version

# Check installed packages
pip list | grep langchain
pip list | grep langgraph

# Quick import test
python -c "from langchain_anthropic import ChatAnthropic; print('✅ OK')"
```

---

## 🎬 Presentation Tips

1. **Run each section independently** - Don't rely on running all cells at once
2. **Show state flow visually** - Use the ASCII diagrams in markdown cells
3. **Demonstrate with real LLM calls** - Watch the notebook execute live
4. **Pause at key concepts** - Explain Literal types, add_messages, thread_id
5. **Encourage questions** - These patterns take time to understand
6. **Share the .env template** - Attendees can set up later
7. **Have backup screenshots** - In case of API issues

---

## 🎓 Learning Path

**Beginner** → Start with Sections 1-4 to understand basics  
**Intermediate** → Learn Sections 5-6 for pattern implementation  
**Advanced** → Master Section 7 for production systems  

---

## 🛠️ Troubleshooting

### Import Errors
```bash
pip install --upgrade -r requirements.txt
```

### API Key Issues
1. Check `.env` file exists
2. Verify `KEY=sk-...` is present
3. Restart Jupyter

### Connection Errors
1. Check internet connection
2. Verify BASE_URL is correct
3. Check API key validity

### Jupyter Won't Start
```bash
pip install --upgrade jupyter
jupyter --version
jupyter notebook
```

---

## 🚀 Next Steps After Presentation

1. **Modify the examples** - Change products, questions, scenarios
2. **Combine patterns** - Mix sequential and conditional edges
3. **Add error handling** - Gracefully handle LLM failures
4. **Implement tools** - Extend nodes to call external APIs
5. **Deploy to production** - Move from MemorySaver to Redis/DB

---

## 📚 Key Concepts Reference

| Concept | Explanation |
|---------|-------------|
| **StateGraph** | Graph-based workflow for agentic systems |
| **State** | Data container flowing through the graph |
| **Node** | Function that processes state and returns updates |
| **Edge** | Connection between nodes |
| **START/END** | Entry and exit points of the graph |
| **Literal** | Type hint for conditional routing values |
| **add_messages** | Reducer that appends to message history |
| **thread_id** | Unique identifier for conversations |
| **MemorySaver** | In-memory state checkpointer |

---

## 🎉 Key Takeaways

- ✅ **StateGraph** provides powerful abstractions for agentic workflows
- ✅ **Three patterns**: Sequential, Conditional, Multi-turn
- ✅ **State management** through TypedDict keeps data organized
- ✅ **Nodes** are simple functions that return state updates
- ✅ **Edges** connect nodes; conditional edges enable routing
- ✅ **MemorySaver** enables multi-turn persistence
- ✅ **Literal types** ensure type-safe conditional routing

---

## 📝 About This Presentation

**Created by:** Nandavardhan Doodala  
**Topic:** StateGraph Implementation Walkthrough  
**Date:** August 2, 2026  
**Duration:** 60-90 minutes  
**Audience:** GenAI learners  
**Level:** Intermediate to Advanced  

---

## 📞 Support

- **Quick help:** Read `QUICK_START.md`
- **Detailed setup:** Check `SETUP_GUIDE.md`
- **Troubleshooting:** See error sections above
- **Code questions:** Review notebook comments

---

## ✨ Features

✅ Complete working example code  
✅ 7 comprehensive sections  
✅ 3 distinct pattern implementations  
✅ 15+ test cases  
✅ Best practices guide  
✅ Multi-turn agent demo  
✅ Pre-configured API credentials  
✅ Automated installation scripts  
✅ Detailed documentation  

---

**Ready to build intelligent AI systems? Let's get started! 🚀**
