# 为什么 context compression 会成为 Context Engineering 的下一层

标签：#context-engineering #context-compression #agent #rag #memory #概念

## 核心内容

`Context compression` 正在从“少塞一点上下文”的技巧，升级成 Agent 系统里的独立工程层。它处理的不是简单截断，而是如何在多轮 loop、工具输出、RAG 检索片段、历史步骤和外部文件之间，保留关键语义、压缩噪音、控制 token 体积，并让后续步骤还能稳定继续。

## 我的判断

这条变化比单纯的 prompt 优化更重要。长任务失败时，问题往往不是模型不会，而是上下文越来越脏、越来越长、越来越冲突。`Context Engineering` 的下一阶段因此不只要解决“喂什么”，还要解决“怎么压缩、何时压缩、压缩后保留什么结构”。它会直接影响 RAG 成本、tool output 可读性、memory 写回策略和 agent loop 的可持续性。

对我自己的知识库和 MCP 工作流来说，这条判断也很直接：未来不应只把资料不断塞给 Agent，而要考虑如何把工作台、输入流、原子知识、工具结果和执行历史压成可继续行动的上下文包。真正有价值的不是更长上下文，而是更干净、更可接力的上下文。

## 为什么它重要

- 长任务会不断累积工具日志、计划残留和重复观察，压缩能力决定 loop 能否继续稳定运行。
- RAG 不只是“检索到更多片段”，还要能把片段组织成当前步骤真正可用的上下文。
- memory 不能无限回灌；压缩策略会决定哪些历史要保留、哪些要总结、哪些要外置。
- tool output 往往冗长、格式杂乱，若没有压缩层，模型读取成本和误判概率都会上升。
- 这条能力很可能以 proxy、compressor、runtime helper、MCP server 或 agent 内置模块的形式出现，而不再只是提示词技巧。

## 来源

- [[../../10-输入流/概念雷达/每日筛选/2026-07-13-概念筛选]]
- [[../../10-输入流/概念雷达/长期追踪/AI-Agent长期概念雷达]]
- [Anthropic: Effective context engineering for AI agents](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents)
- [Vercel: AI SDK 7 is now available](https://vercel.com/blog/ai-sdk-7)
- [LangChain: Context Engineering for Agents](https://www.langchain.com/blog/context-engineering-for-agents)

## 相关主题

- [[../../30-主题地图/Agent]]
- [[../../30-主题地图/AI 基础设施]]
- [[../../30-主题地图/RAG]]

## 下一步问题

- 我的知识库 MCP 后续是否需要单独实现一层“上下文压缩/摘要整理”能力，而不只是读取资料？
- 哪些内容最该被压缩：工具日志、日报、社媒收藏摘要，还是执行历史？
- `context compression` 更适合做成 Agent runtime 内部模块，还是做成独立 MCP/tool？
