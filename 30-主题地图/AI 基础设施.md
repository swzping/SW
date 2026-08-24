# AI 基础设施

标签：#ai-infrastructure #llm #compute #ai-gateway #主题地图

## 这个主题是什么

AI 基础设施关注支撑 AI 产品运行的底层能力，包括算力、电力、GPU、云服务、模型 API、AI gateway、模型路由、推理成本、区域节点、网络延迟、合规和可观测性。

## 为什么现在重要

当 AI 从试用走向高频生产调用，模型能力之外的基础设施会决定成本、稳定性和全球交付能力。算力出海与 Token 出海说明 AI 服务正在从模型竞争延伸到推理服务、区域节点和跨境交付。

## 关键分支

- 算力出海与 Token 出海
- Token 中转站与 API 分销
- 推理成本与 token 经济
- AI gateway 与模型路由
- 私有 MCP / 内部工具接入
- 区域节点与网络延迟
- 数据跨境与合规
- 可观测性、计费和 SLA
- Web data / crawling / extraction layer

## 已有证据

- [证券时报：Token 出海](https://www.stcn.com/article/detail/3955140.html)
- [中国能源报/人民日报：算电协同与 Token 出海](https://paper.people.com.cn/zgnyb/pc/content/202604/13/content_30151076.html)
- [中国信通院：东南亚算力中心服务商报告](https://www.caict.ac.cn/kxyj/qwfb/ztbg/202605/t20260513_722939.htm)

## 相关笔记

- [[../20-原子知识/概念/算力出海与 Token 出海]]
- [[../20-原子知识/概念/Token 中转站与轻量 AI Gateway]]
- [[../20-原子知识/概念/为什么私有 MCP 接入会成为关键能力]]
- [[../20-原子知识/概念/为什么 workflow layer 正在压过 model catalog]]
- [[../20-原子知识/概念/为什么 MCP 的下一阶段重点会是企业授权而不是工具接入]]
- [[../20-原子知识/概念/普通人可做的垂直 AI 应用机会]]
- [[../20-原子知识/产品项目/OpenRouter 与 AI Gateway]]
- [[../20-原子知识/产品项目/FreeLLMAPI]]
- [[../20-原子知识/产品项目/Firecrawl]]
- [[../20-原子知识/产品项目/cangjie-skill 与视频蒸馏成 Agent Skills]]
- [[../20-原子知识/概念/为什么 context compression 会成为 Context Engineering 的下一层]]

## 当前判断

算力出海是长期基础设施趋势，重要性高于单个内容应用，但需要分层判断。重资产算力出海不适合个人短期直接切入；token 中转、API 分销、模型调用中台和轻量 AI Gateway 则是个人或小团队可以介入的上层机会。

对个人后期发展而言，更现实的切入点不是做数据中心或算力贸易，而是掌握模型调用、成本监控、provider 选择、fallback、日志、计费和工作流自动化这些上层可操作能力。应避免把自己定位成低价 token 贩卖者，而是定位成帮助小团队管理模型调用复杂度的人。

轻量 AI Gateway 最适合和垂直行业 AI 工作台结合，而不是单独卖 token。财务会计、跨境电商、外贸货代、内容出海等方向都可能需要统一模型调用、成本监控、日志、fallback 和人工确认。

`FreeLLMAPI` 这类自托管聚合代理提供了一个很有用的对照样本：它把统一端点、provider 路由、failover 和 key 管理做成了个人可运行的本地层，说明轻量 AI Gateway 不一定先以云平台形态出现。但它也明确暴露了实验层边界，不应直接把它等同于企业生产网关。

除模型调用层外，外部网页输入层也值得关注。Firecrawl 这类工具把网页抓取、搜索和结构化抽取变成 Agent 可调用能力，可以补足 RAG 和情报扫描中的“资料获取”环节。

最近需要补上的新判断是：基础设施不只发生在“模型 API 之后”，也发生在“私有环境如何被安全接进 Agent”这一层。`私有 MCP 接入`、远程工作区边界、浏览器原生 MCP 和目录/权限控制，正在让知识库、前端调试、本地工具和内部系统真正进入生产工作流。

另一个值得轻量观察的方向，是把外部内容蒸馏成可执行 skill 的工具链。`cangjie-skill` 说明高价值内容的基础设施，不一定只是“抓数据”，也可能是“把内容结构化为 Agent 可调用方法单元”。

现在还需要补上一条判断：基础设施也开始进入上下文层。`Context compression` 不只是 prompt 技巧，而是在成为处理长任务状态、工具日志、RAG 片段和运行时变量的工程能力；它和 runtime context、provider files、memory 外置和可观测性一起，正在构成 Agent 基础设施的中间层。

另一个应该正式固定的判断是：`workflow layer` 正在压过 `model catalog`。`GitHub Models` 退场，不代表模型不重要，而是说明“模型目录”更像可替代的底层能力；真正更难替代的，是 session、tool calls、approval、runtime context、skills、routing 和执行治理层。

现在还应把 `MCP 企业授权 / 治理层` 单独挂住。原因不是它比工具接入更“新”，而是它更接近真实生产门槛。谁能把授权、审计、账户边界和确认机制做清楚，谁才更可能让 Agent 安全进入企业知识库、内部系统和本地工作区。

## 下一步追踪

- AI Gateway 是否会成为连接算力出海、模型路由和 Agent 应用的关键中间层？
- 推理成本、延迟、合规和区域节点，哪个最先影响小团队 AI 产品出海？
- 是否需要给个人项目建立统一的 token、latency、失败率和 provider 记录层？
- 垂直场景轻量 AI Gateway 的第一批客户应该来自 coding agent、内容出海、AI 漫剧，还是知识库 agent？
- Web data layer 是否应独立成 MCP 工具，还是并入知识库 MCP？
