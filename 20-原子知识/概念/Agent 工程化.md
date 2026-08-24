# Agent 工程化

标签：#agent #agent-engineering #mcp #context-engineering #coding-agent #概念

## 核心内容

Agent 方向正在从“模型是否足够聪明”转向“能否作为可运行的工程系统进入真实工作流”。近期 OpenAI Agents SDK、Google ADK、Microsoft Agent Framework 和 MCP 生态的共同信号是：Agent 需要具备工具连接、状态管理、上下文管理、交接、评测、可观察性、人类确认和权限边界。

## 我的判断

Agent 的长期变量不再只是模型能力，而是工程可控性。真正能落地的 Agent 会围绕 SDK/runtime、工具协议、memory/context、eval/trace、human-in-the-loop 和安全治理形成一套工作系统；个人知识库 MCP 可以成为 Agent memory 和上下文工程的实际落地点。

## 来源

- [OpenAI Agents SDK](https://openai.github.io/openai-agents-python/)
- [Anthropic: Introducing the Model Context Protocol](https://www.anthropic.com/news/model-context-protocol)
- [Google Developers Blog: Agent Development Kit](https://developers.googleblog.com/en/agent-development-kit-easy-to-build-multi-agent-applications/)
- [Microsoft Learn: Microsoft Agent Framework](https://learn.microsoft.com/en-us/agent-framework/overview/)
- [[../../30-主题地图/Agent]]
- [[../../20-原子知识/概念/我想做一个怎样的 MCP]]

## 相关主题

- [[../../30-主题地图/Agent]]
- [[../../30-主题地图/RAG]]

## 下一步问题

- 个人知识库 MCP 的下一版是否应该优先实现 `suggest_next_action` 和 `update_topic_map`，让 Agent 可以推进知识库而不只是读取？
- Coding Agent 的分工、审查和测试闭环，能否沉淀成一套个人工作流规范？
- Agent memory 应该由聊天产品内置，还是由外部知识库/MCP 承担更可控的长期记忆？
