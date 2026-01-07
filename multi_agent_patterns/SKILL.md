---
name: multi_agent_patterns
router_kit: AIKit
description: Multi-agent architecture design, orchestration patterns, and agent collaboration guide.
metadata:
  skillport:
    category: architecture
    tags: [agents, algorithms, artificial intelligence, automation, chatbots, cognitive services, deep learning, embeddings, frameworks, generative ai, inference, large language models, llm, machine learning, model fine-tuning, multi agent patterns, natural language processing, neural networks, nlp, openai, prompt engineering, rag, retrieval augmented generation, tools, vector databases, workflow automation]      - patterns
---

# 🤖 Multi-Agent Patterns

> Multi-agent architecture and orchestration guide.

---

## 📋 When to use Multi-Agent?

| Situation              | Single Agent | Multi-Agent |
| ---------------------- | ------------ | ----------- |
| Simple task            | ✅            | ❌           |
| Context limit exceeded | ❌            | ✅           |
| Different expertises   | ❌            | ✅           |
| Parallel processing    | ❌            | ✅           |
| Complex workflow       | ❌            | ✅           |

---

## 🏗️ Architecture Patterns

### 1. Orchestrator Pattern
```
        ┌─────────────┐
        │ Orchestrator│
        └──────┬──────┘
               │
    ┌──────────┼──────────┐
    ▼          ▼          ▼
┌───────┐  ┌───────┐  ┌───────┐
│Agent 1│  │Agent 2│  │Agent 3│
│Coder  │  │Tester │  │Reviewer│
└───────┘  └───────┘  └───────┘
```

**Usage:** Complex workflows, task delegation

### 2. Pipeline Pattern
```
┌───────┐    ┌───────┐    ┌───────┐
│ Parse │ -> │Process│ -> │ Output│
└───────┘    └───────┘    └───────┘
```

**Usage:** Sequential processing, data transformation

### 3. Specialist Pattern
```
        ┌─────────────┐
        │   Router    │
        └──────┬──────┘
               │ (task type)
    ┌──────────┼──────────┐
    ▼          ▼          ▼
┌───────┐  ┌───────┐  ┌───────┐
│  SQL  │  │  API  │  │  UI   │
│Expert │  │Expert │  │Expert │
└───────┘  └───────┘  └───────┘
```

**Usage:** Domain-specific expertise

### 4. Debate Pattern
```
┌───────┐         ┌───────┐
│Agent A│ <-----> │Agent B│
│(Pro)  │ debate  │(Con)  │
└───────┘         └───────┘
         \       /
          \     /
           \   /
        ┌───────┐
        │ Judge │
        └───────┘
```

**Usage:** Decision making, option evaluation

---

## 🔧 Implementation

### Agent Definition
```python
class Agent:
    def __init__(self, name, role, skills):
        self.name = name
        self.role = role
        self.skills = skills
    
    def process(self, task):
        # Agent logic
        pass
```

### Orchestrator
```python
class Orchestrator:
    def __init__(self, agents):
        self.agents = agents
    
    def route(self, task):
        # Determine which agent handles task
        agent = self.select_agent(task)
        return agent.process(task)
    
    def select_agent(self, task):
        # Routing logic
        pass
```

---

## 📊 Communication Patterns

| Pattern              | Description               |
| -------------------- | ------------------------- |
| **Direct**           | Agent → Agent             |
| **Broadcast**        | Orchestrator → All Agents |
| **Pub/Sub**          | Topic-based messaging     |
| **Request/Response** | Sync communication        |
| **Event-driven**     | Async, event queue        |

---

## ⚠️ Best Practices

1. **Clear Roles**: Each agent must have a clear task
2. **Minimal Overlap**: No task overlap
3. **Fallback**: Plan B if Agent fails
4. **Monitoring**: Monitor each agent
5. **Context Sharing**: Share necessary information

---

*Multi-Agent Patterns v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [AutoGen Documentation](https://microsoft.github.io/autogen/) & [CrewAI](https://docs.crewai.com/)

### Phase 1: Role Definition
- [ ] **Persona Design**: Write a clear "System Message" for each agent (What represent, what to do, what not to do).
- [ ] **Tools**: Give the agent only the tools it needs (Reduces LLM hallucination risk).
- [ ] **Hierarchy**: Who reports to whom? (Manager -> Worker) or (Peer-to-Peer)?

### Phase 2: Interaction Pattern
- [ ] **Chat Topology**: Choose between "Group Chat" (Everyone talks) vs "Nested Chats" (Subgroups).
- [ ] **Handoffs**: Define clear trigger phrases for task handoffs.
- [ ] **Human-in-the-loop**: Add "User Proxy Agent" or approval mechanism for critical decisions.

### Phase 3: Execution & Output
- [ ] **Consolidation**: Assign a "Summarizer Agent" to consolidate results.
- [ ] **Validation**: Add a validator to check if output matches format (JSON/Markdown).
- [ ] **Cost Control**: Set Max Turns and token limits.

### Checkpoints
| Phase | Verification                                         |
| ----- | ---------------------------------------------------- |
| 1     | Do agents interrupt each other (Broken turn-taking)? |
| 2     | Is there a risk of Infinite Loop?                    |
| 3     | Are complex tasks correctly divided into sub-parts?  |
