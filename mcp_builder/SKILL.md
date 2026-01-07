---
name: mcp_builder
router_kit: FullStackKit
description: MCP (Model Context Protocol) server creation, FastMCP/TypeScript SDK usage and API integration guide.
metadata:
  skillport:
    category: development
    tags: [accessibility, api integration, backend, browser apis, client-side, components, css3, debugging, deployment, frameworks, frontend, fullstack, html5, javascript, libraries, mcp builder, node.js, npm, performance optimization, responsive design, seo, state management, testing, typescript, ui/ux, web development]      - server
---

# 🔌 MCP Builder

> MCP server creation and API integration guide.

---

## 📋 What is MCP?

Model Context Protocol (MCP) is a standard protocol that enables LLMs to interact with external services.

### Use Cases
- API integrations
- Database connections
- File system access
- External service calls

---

## 🐍 Python (FastMCP)

### Installation
```bash
pip install fastmcp
```

### Simple Server
```python
from fastmcp import FastMCP

mcp = FastMCP("my-server")

@mcp.tool()
def hello(name: str) -> str:
    """Say hello to someone."""
    return f"Hello, {name}!"

@mcp.tool()
def add(a: int, b: int) -> int:
    """Add two numbers."""
    return a + b

if __name__ == "__main__":
    mcp.run()
```

### Adding Resource
```python
@mcp.resource("config://app")
def get_config() -> str:
    """Get application configuration."""
    return json.dumps({"version": "1.0"})
```

---

## 📘 TypeScript (MCP SDK)

### Installation
```bash
npm install @modelcontextprotocol/sdk
```

### Creating Server
```typescript
import { McpServer } from "@modelcontextprotocol/sdk/server/mcp.js";
import { StdioServerTransport } from "@modelcontextprotocol/sdk/server/stdio.js";

const server = new McpServer({
  name: "my-server",
  version: "1.0.0",
});

server.tool("hello", { name: "string" }, async ({ name }) => {
  return { content: [{ type: "text", text: `Hello, ${name}!` }] };
});

const transport = new StdioServerTransport();
await server.connect(transport);
```

---

## ⚙️ Configuration

### mcp_config.json
```json
{
  "mcpServers": {
    "my-server": {
      "command": "python",
      "args": ["path/to/server.py"],
      "env": {
        "API_KEY": "your-key"
      }
    }
  }
}
```

---

## 🎯 Best Practices

1. **Tool naming**: Açıklayıcı, lowercase, hyphen-separated
2. **Descriptions**: Her tool için detaylı docstring
3. **Error handling**: Try-catch ile hata yönetimi
4. **Type hints**: Parametre tipleri belirt
5. **Validation**: Input validation yap

---

*MCP Builder v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Model Context Protocol Spec](https://spec.modelcontextprotocol.io/)

### Phase 1: Tool Definition
- [ ] **Schema**: Define input schema according to JSON Schema standard (and validate with Zod).
- [ ] **Description**: Write detailed and "exampled" docstring for LLM to understand when to use it.
- [ ] **Idempotency**: Specify if the tool has side effects when called repeatedly.

### Phase 2: Implementation & Security
- [ ] **Isolation**: Limit file system access to allowed directories only.
- [ ] **Validation**: Always sanitize user inputs (Prevent Path Traversal etc.).
- [ ] **Transport**: Configure Stdio or SSE transport layer correctly.

### Phase 3: Testing
- [ ] **Inspector**: Manually test endpoints with MCP Inspector tool.
- [ ] **Integration**: Perform end-to-end test with Claude Desktop (or target client).

### Checkpoints
| Phase | Verification                                                             |
| ----- | ------------------------------------------------------------------------ |
| 1     | Can LLM call the tool with correct parameters?                           |
| 2     | Does a meaningful message return in case of error (e.g. file not found)? |
| 3     | Is resource consumption (RAM/CPU) reasonable when server is started?     |
