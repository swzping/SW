# OpenRouter 与 AI Gateway

标签：#openrouter #ai-gateway #model-routing #llm #agent #产品项目

## 核心内容

OpenRouter 是一个面向多模型调用的 AI gateway / model router：开发者可以通过统一 API 接入不同模型和 provider，并配置 provider routing、fallback、成本与延迟等策略。它代表的长期变化不是某个单一平台变热，而是模型调用层正在从“写死单模型 API”演化成“可路由、可降级、可观测、可控成本的基础设施”。

## 我的判断

OpenRouter 值得关注，但应作为 `AI Gateway / Model Router` 的代表案例来跟踪，而不是作为独立产品主线。对 Agent 工程化来说，模型路由会影响长任务可靠性、成本控制、provider 宕机后的恢复、模型评测和多模型策略；对个人项目来说，可以先观察其设计模式，再决定是否在自己的工具链中引入类似网关层。

## 来源

- [OpenRouter FAQ](https://openrouter.ai/docs/faq)
- [OpenRouter Provider Routing](https://openrouter.ai/docs/guides/routing/provider-selection)
- [OpenRouter Model Fallbacks](https://openrouter.ai/docs/guides/routing/model-fallbacks)
- [OpenRouter Provider Failover](https://openrouter.ai/blog/insights/reliability-failover/)
- [OpenRouter Series B](https://openrouter.ai/blog/announcements/series-b/)
- [TechCrunch: OpenRouter valuation](https://techcrunch.com/2026/05/26/openrouter-more-than-doubles-valuation-to-1-3b-in-a-year/)

## 相关主题

- [[../../30-主题地图/Agent]]
- [[../../30-主题地图/LLM]]
- [[../../30-主题地图/模型评测]]
- [[../../20-原子知识/概念/Agent 工程化]]

## 下一步问题

- 我自己的 Agent 或知识库 MCP 是否需要一层轻量 AI gateway，用来统一记录 latency、token、失败率和模型选择？
- 模型路由策略应该优先按成本、速度、上下文长度、任务类型，还是可靠性来设计？
- OpenRouter 这类中间层在隐私、provider 日志和供应商依赖上是否值得接受？
