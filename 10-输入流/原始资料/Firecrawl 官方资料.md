# Firecrawl 官方资料

类型：官方文档 / 开源项目

来源：

- Firecrawl 官网：<https://www.firecrawl.dev/>
- Firecrawl GitHub：<https://github.com/firecrawl/firecrawl>
- Firecrawl MCP use case：<https://www.firecrawl.dev/use-cases/ai-mcps>

访问日期：2026-07-07

## 为什么收藏

Firecrawl 是面向 AI/Agent 的网页抓取、搜索、解析和结构化数据工具。它可以把网页转换成 Markdown、结构化 JSON、截图等格式，适合作为知识库、RAG、Agent 情报扫描和 MCP 工作流的外部网页输入层。

## 中文摘要

- Firecrawl 不是 LLM，也不是知识库本身。
- 它的核心作用是把外部网页变成 LLM/Agent 更容易使用的上下文。
- 常见用途包括网页抓取、站点爬取、搜索、结构化抽取、RAG 资料导入。
- Firecrawl 提供官方 MCP server，可被 Claude Code、Cursor、Windsurf 等 MCP 客户端调用。
- 对当前知识库而言，它可以作为每日 AI 情报扫描或未来 `knowledge-workspace-mcp` 的外部网页获取层。

## 相关笔记

- [[../../20-原子知识/产品项目/Firecrawl]]
- [[../../30-主题地图/RAG]]
- [[../../30-主题地图/AI 基础设施]]

## 待确认问题

- 当前自动化是否需要接入 Firecrawl，还是先保持普通 web search？
- 如果接入 Firecrawl，它应该作为独立 MCP server，还是作为 `knowledge-workspace-mcp` 的一个工具？
- Firecrawl 的成本、限额、抓取质量和反爬能力是否适合每日情报扫描？

