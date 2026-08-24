# Codex MCP 官方文档

类型：官方文档

来源：

- Codex MCP 文档：<https://developers.openai.com/codex/mcp>
- Codex app settings：<https://developers.openai.com/codex/app/settings>
- MCP TypeScript SDK：<https://github.com/modelcontextprotocol/typescript-sdk>

访问日期：2026-07-03

## 为什么收藏

这组文档说明 Codex 如何接入 MCP server，以及本地 MCP server 如何通过 TypeScript SDK 实现。它是后续开发 `knowledge-workspace-mcp` 的主要依据。

## 关键内容中文摘要

- MCP 用于让 Codex 接入外部工具、数据和工作流。
- Codex 可以通过 MCP 配置启动本地 server。
- 本地 MCP server 通常通过命令运行，并通过 stdio 与客户端通信。
- MCP server 可以暴露 tools、resources、prompts 等能力。
- 对个人知识库 MCP 来说，读操作可以自动执行，写操作应要求用户确认。
- `KNOWLEDGE_BASE_ROOT` 这类环境变量可以用于限制 MCP server 的工作目录。

## 对当前知识库的意义

这个知识库可以通过 MCP 暴露以下能力：

- 读取今日工作台。
- 读取今日整理建议。
- 推荐下一条待推进想法。
- 在用户确认后创建原子知识。
- 在用户确认后更新主题地图。

## 相关笔记

- [[../../20-原子知识/概念/Codex 如何接入 MCP]]
- [[../../20-原子知识/概念/我想做一个怎样的 MCP]]
- [[../../40-综合输出/研究备忘录/Knowledge Workspace MCP 设想]]

## 待确认问题

- Codex app、CLI、IDE 对 MCP 配置是否完全一致？
- 本地 MCP server 修改后是否需要重启 Codex？
- MCP server 的写操作确认机制应该由工具参数控制，还是由 Codex 对话流程控制？

