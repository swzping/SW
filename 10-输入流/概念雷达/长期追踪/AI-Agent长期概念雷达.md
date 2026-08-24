# AI/Agent 长期概念雷达

用途：这是长期维护的 AI/Agent 概念观察池。它不是某一天的日报，而是从日报、网络资料和对话中沉淀出的长期概念地图。后续如果某个概念反复出现，再拆成 `20-原子知识/`，并链接到 `30-主题地图/Agent.md`、`30-主题地图/RAG.md` 或新主题地图。

最近更新：2026-08-20

## 一句话总览

AI/Agent 领域正在从“模型会回答”转向“系统会行动”。你需要持续关注的不是单个模型名，而是几组能力：检索、工具调用、上下文工程、循环执行、长期记忆、协议互通、评测治理、自我改进。

## 优先级 A：必须长期跟踪

### Unified AI Workspace

它是什么：把 `ChatGPT / Codex / browser-based work / connectors / long-running tasks` 收进同一个入口和执行工作台的产品方向。它不是单一工具名，而是 agent 工作界面的组织方式。

为什么重要：对你来说，这会决定以后应该把 `coding agent`、`browser agent`、`knowledge agent`、`review agent` 看成分散工具，还是同一工作台里的不同执行面。

最近判断更新：

- `ChatGPT for your most ambitious work` 与 `Evolving Atlas into ChatGPT for browser-based agentic work` 形成连续证据，说明 OpenAI 正把 `ChatGPT + Codex + browser work` 讲成统一入口。
- 这意味着未来竞争点会更少是“谁有一个更强的单点 agent”，更多是“谁能把长任务、工具、审批、handoff、connectors 和可见性收进一个稳定工作台”。
- 对前端开发者来说，这条线比再追一个单独模型名更重要，因为它会直接影响 `browser tooling`、`session visibility`、`long-running work`、`review handoff` 如何进入同一界面。
- `GPT-5.6` 已进入 `ChatGPT`、`Codex` 与 `OpenAI API`，进一步补强了“模型升级会直接并入统一工作台执行层”的判断；后续更值得跟踪的不是单次模型名字，而是它如何改变 `默认入口、异步任务、浏览器工作、review workflow`。
- `Codex in ChatGPT` 当前已明确写出：`gpt-5.4` 与 `gpt-5.4-mini` 将在 `2026-08-31` 退役，默认迁移到 `gpt-5.6-terra` 与 `gpt-5.6-luna`。这进一步说明统一工作台不只是在统一入口，也开始统一管理 `默认模型生命周期`、`scheduled tasks` 与 `custom agents` 的兼容层。
- `GPT-5.6 Sol Ultrafast` 进一步补出一条新证据：统一工作台未来不只要管理“默认用哪个模型”，还要管理“默认走哪种执行速度层”。这说明 `execution speed tier` 也在进入工作台控制面，而不再只是底层服务细节。

关注问题：

- 统一工作台会不会成为 coding agent 的默认形态，而不是可选集成？
- browser-based work、code review、connectors 是否会收进同一权限与审查框架？
- 未来 `Skill`、`Memory`、`Observability` 会不会都挂在这个工作台层，而不再只是底层能力？
- 模型退役、默认切换和异步任务兼容，会不会成为 agent 工作台的默认治理控制面？

来源：

- OpenAI：<https://openai.com/index/chatgpt-for-your-most-ambitious-work/>
- OpenAI Help：<https://help.openai.com/en/articles/20001371-evolving-atlas-into-chatgpt-for-browser-based-agentic-work>
- OpenAI Help：<https://help.openai.com/en/articles/11899719-codex-in-chatgpt>

### RAG

全称：Retrieval-Augmented Generation，检索增强生成。

它是什么：让 LLM 在回答前先检索外部知识库、文档、网页或数据库，再基于检索结果生成回答。核心价值是让模型使用更新、更专业、可引用的知识，而不是只依赖训练参数。

为什么重要：你的知识库未来如果要能问答、引用、回溯判断，就会走到 RAG。现在先把 Markdown 结构打好，后续再接全文检索或向量检索。

关注问题：

- 什么时候用全文检索，什么时候用向量检索？
- 如何切片、加元数据、保留来源？
- RAG 的答案如何避免“看似引用、实际乱答”？

来源：

- NVIDIA: <https://blogs.nvidia.com/blog/what-is-retrieval-augmented-generation/>
- IBM: <https://www.ibm.com/think/topics/retrieval-augmented-generation>
- AWS: <https://aws.amazon.com/what-is/retrieval-augmented-generation/>

### MCP

全称：Model Context Protocol，模型上下文协议。

它是什么：一个开放标准，用来把 AI 应用连接到外部数据、工具和工作流。可以粗略理解为“AI 应用连接工具和数据源的标准接口”。

为什么重要：Agent 要真正干活，就必须接文件、数据库、浏览器、GitHub、内部 API、搜索、终端等工具。MCP 试图把这些连接方式标准化，减少每个工具都要单独适配的问题。

最近判断更新：

- 观察重点已从“能不能把工具接给 Agent”升级为“如何做授权治理、如何带 UI/app 形态嵌入工作流、如何连接浏览器等高反馈工具”。
- `MCP Apps` 与 `Enterprise-Managed Authorization` 说明 MCP 正从开发者协议走向团队生产协议。
- `Safari MCP server` 说明浏览器原生能力正开始通过 MCP 暴露给 coding agent，前端调试场景的重要性显著上升。
- GitHub Copilot `cloud agent`、`Playwright MCP server` 等主流工作流样本继续说明，MCP 正在从“工具连接标准”长到“授权 + UI + 工作流节点 + 接管结果”的执行层。
- `2026-07-28 Release Candidate` 说明 MCP 正在进入更稳定的工程期；接下来更值得比较的，不会只是 server 数量，而是 `授权治理、app 形态、workflow 接管、SDK 迁移成本`。
- `MCP Apps`、`Enterprise-Managed Authorization` 与 `Safari MCP server` 这一组官方材料已经形成连续证据，说明 MCP 的下一阶段重点会更偏 `企业接入、浏览器原生工作流、协议外层交互结构`，而不是继续停留在“工具目录越来越多”。
- `GitHub MCP Server supports the next MCP specification` 进一步补了一条工程期证据，说明 MCP 接下来更像 `spec / host / SDK` 的兼容性赛道，而不是单纯工具目录赛道。
- `2026-07-28 MCP Specification Release Candidate` 把 `stateless core`、`Tasks extension`、`MCP Apps`、`authorization hardening`、`formal deprecation policy` 一次性写进正式升级路径，说明 MCP 现在不只是“生态热”，而是开始进入 `host / gateway / SDK / auth` 的系统工程阶段。
- `Agent Plugins 1.0 in VS Code, Copilot CLI, and the Copilot app` 进一步补出一条很强的新证据：`skills + MCP servers` 已经开始被一起打包进跨客户端插件标准，并能配合企业设置与 MCP allowlists 使用。这说明 MCP 的下一步不只是“更多 server”，而是会更深地进入 `插件分发、策略管理、跨 host 安装、组织治理`。

关注问题：

- MCP Server、MCP Client、Host 分别是什么？
- MCP 如何处理权限、认证、工具暴露范围？
- MCP 带来的 prompt injection、工具滥用、远程代码执行风险如何治理？
- MCP 会不会从“纯工具协议”扩展为“工具 + UI + 审批 + 人机协作节点”的工作流协议？

来源：

- MCP 官方文档：<https://modelcontextprotocol.io/docs/getting-started/intro>
- Anthropic 发布介绍：<https://www.anthropic.com/news/model-context-protocol>
- Anthropic 工程文章：<https://www.anthropic.com/engineering/code-execution-with-mcp>
- Google Cloud 解释：<https://cloud.google.com/discover/what-is-model-context-protocol>
- MCP Apps：<https://modelcontextprotocol.io/extensions/apps/overview>
- Enterprise-Managed Authorization：<https://modelcontextprotocol.io/extensions/auth/enterprise-managed-authorization>
- Safari MCP server：<https://webkit.org/blog/18136/introducing-the-safari-mcp-server-for-web-developers/>
- GitHub MCP Server next spec：<https://github.blog/changelog/2026-07-25-github-mcp-server-supports-the-next-mcp-specification/>
- MCP 2026-07-28 RC：<https://blog.modelcontextprotocol.io/posts/2026-07-28-release-candidate/>

### AI Agent

它是什么：能够代表用户追求目标、规划步骤、调用工具、观察结果并继续行动的软件系统。和普通聊天机器人相比，Agent 的关键不是“会说”，而是“会做”。

常见组成：

- Model：负责推理和生成。
- Tools：外部工具，如搜索、数据库、浏览器、代码执行。
- Context：当前任务需要的信息。
- Memory：跨任务、跨会话保留的信息。
- Harness：包住模型循环的运行框架。
- Guardrails：权限、安全、成本、输出质量控制。

关注问题：

- Agent 和 workflow 的区别是什么？
- 哪些任务适合 agent，哪些只需要普通自动化？
- Agent 如何知道什么时候停止？

来源：

- OpenAI Agent Guide: <https://openai.com/business/guides-and-resources/a-practical-guide-to-building-ai-agents/>
- LangChain Workflows and Agents: <https://docs.langchain.com/oss/python/langgraph/workflows-agents>
- IBM AI Agents: <https://www.ibm.com/think/topics/ai-agents>
- Google Cloud AI Agents: <https://cloud.google.com/discover/what-are-ai-agents>

### Agent Loop

它是什么：Agent 反复执行“思考/计划 -> 调用工具 -> 观察结果 -> 修正计划 -> 再行动”的循环，直到任务完成或触发停止条件。

为什么重要：Agent 的能力大多来自循环，而不是单次提示。coding agent 能改代码、跑测试、看报错、再修，就是典型 loop。

关注问题：

- loop 的停止条件是什么？
- 每轮观察结果如何压缩进上下文？
- loop 失控时如何中断？

来源：

- LangChain Agents: <https://docs.langchain.com/oss/javascript/langchain/agents>
- OpenAI Function Calling: <https://developers.openai.com/api/docs/guides/function-calling>

### Loop Engineering

它是什么：近期兴起的概念，指设计 agent 自己反复提示、执行、检查和改进的循环系统，而不是人一直手动 prompt。可以理解为“把提示工程升级成循环系统设计”。

一句话判断：Prompt engineering 是写好一次输入；loop engineering 是设计一个会反复推进任务的执行回路。

为什么重要：它很可能成为 coding agent 和长期 agent 的核心工作方式。未来人类不只是写 prompt，而是设计目标、约束、验证方式、停止条件和反馈机制。

关注问题：

- loop 中哪些步骤应由模型决定，哪些必须由程序固定？
- 如何控制 token 成本和错误累积？
- loop 的产物如何沉淀成 memory、skill 或 eval？

来源：

- Addy Osmani: <https://addyosmani.com/blog/loop-engineering/>
- MindStudio: <https://www.mindstudio.ai/blog/what-is-loop-engineering-ai-coding-agents>

### Context Engineering

它是什么：系统性管理 LLM 推理时看到的信息，包括用户目标、系统指令、工具结果、历史记忆、检索材料、当前文件和约束。

为什么重要：Agent 失败经常不是模型不会，而是上下文错了、太多了、缺了、过期了、相互冲突了。

最近判断更新：

- `Context compression` 正在从上下文整理技巧升级为独立工程层。它不只是“少塞一点文本”，而是在工具输出、日志、RAG 片段和长任务历史进入模型前，先做压缩、筛选和结构化。
- 这说明 `Context Engineering` 的下一阶段不只是“怎么选信息”，还包括“如何在不丢关键语义的前提下降低上下文体积”，并可能以代理、压缩器、proxy 或 MCP/server 形态出现。
- `动态上下文治理` 正开始获得更明确的方法与论文补证，说明它未来可能从“经验技巧”升级为可验证的质量层；对前端开发者来说，这会直接影响 `repo memory`、`browser logs`、`tool output` 如何进入 agent。

常见动作：

- Select：选择当前步骤最相关的信息。
- Compress：压缩历史和工具观察。
- Isolate：隔离不同任务或子 agent 的上下文。
- Write：把中间结果写入外部记忆或文件。

来源：

- Anthropic: <https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents>
- LangChain: <https://www.langchain.com/blog/context-engineering-for-agents>
- Neo4j: <https://neo4j.com/blog/agentic-ai/what-is-context-engineering/>

### Agent Skill

它是什么：把团队上下文、约束、流程、检查方式和常见任务封装成 Agent 可复用能力的组织层。它不只是提示模板，更像“让 agent 学会团队做事方式”的结构化资产。

为什么重要：`Skill` 已经不只出现在单一 coding agent 里。OpenAI Developers、Claude 生态和 Figma agent 都在强化它，说明它正在成为跨 coding、design、review workflow 的通用协作接口。

最近判断更新：

- `Skill` 的价值正在从“提高单次回答质量”升级为“把组织经验稳定注入 agent 循环”。
- 它和 `Context Engineering`、`Loop Engineering`、`Memory` 的关系越来越紧：skill 负责封装做事方法，context 负责喂对信息，loop 负责反复执行，memory 负责跨任务保留结果。
- 对前端开发者来说，未来 `Design System MCP`、`Frontend QA MCP`、`Knowledge Workspace MCP` 都可以被理解为“带工具和上下文边界的 skill 化工作单元”。
- `Copilot code review: Agent skills and MCP now generally available` 进一步补证：`Skill` 已开始进入 `code review`，而不再只服务代码生成或单次执行阶段。
- 高 star 独立 skill 仓库持续出现，并开始出现“从 agent 执行记录反向提炼 skill”的社区样本，说明 skill 正在从平台内特性升级为可传播、可复盘的方法资产。
- GitHub Trending 持续出现显式 `skills` 仓库，说明 `Skill` 仓库化、团队化、跨角色化仍在增强，它已不只是单个平台里的功能开关。
- `Gaia Skill Tree`、`PBOM` 这类样本说明，Skill 可能继续从“高 star 仓库集合”长到“可发现、可分级、带证据链和审计线索的方法资产网络”。
- `book-to-skill`、`OpenSpace`、`ECC` 这组近期样本进一步补证：Skill 正在从“仓库里的提示包”分化成 `资料蒸馏层、skill management layer、execution harness` 三类更独立的工程对象。
- OpenAI、Anthropic、Figma 的官方技能路线仍在连续提供证据，说明 `Skill` 作为组织层不是短期热词，而是在跨 coding、design、workflow 平台收敛。
- `skills.sh` 上线 `skill packs`，说明 Skill 正在进一步走向 `目录化、打包分发、跨 host 安装` 的生态层，而不再只是零散仓库或平台内置功能。
- `Replit Agent Skills` 官方文档进一步补证：`Skill` 已不只属于 coding agent 或 design agent，它也开始进入 `AI app builder / app workspace` 这一层，说明 skill 正在从“方法资产”继续长成跨产品的默认组织接口。
- `Skills in the Agents SDK` 与 `Copilot code review: Agent skills and MCP now generally available` 这组官方线索说明，`Skill` 已不只是 agent 运行时里的能力注入点，而是在进一步进入 `review workflow`、`team runtime`、`异步工程流`。
- `Agent Plugins 1.0` 则把这条线再往前推进了一步：`Skill` 不再只是 runtime 中的一段能力描述，也开始成为 `可安装、可分发、可市场化、可治理` 的插件单元，并且和 `MCP server` 配置绑定在一起。对前端开发者来说，这更像未来 `Design System MCP`、`Frontend QA MCP`、`Knowledge Workspace MCP` 的实际产品壳层。
- `Anthropic-Cybersecurity-Skills`、`mattpocock/skills`、`VoltAgent/awesome-agent-skills` 这组高 star 样本进一步补了一条生态层证据：Skill 正在从“少数官方平台功能”长到 `通用 skill 仓库 + 垂直行业 skill pack + 聚合目录` 三层并行的分发结构。它说明 Skill 的下一阶段不只会比“谁支持 skill”，还会比 `谁有更好的发现、治理、复用和领域化能力`。

关注问题：

- skill 的边界应该到哪里：任务模板、工具包，还是完整工作流？
- skill 如何被评测、版本化、复盘和共享？
- skill 会不会成为不同 agent / MCP host 之间的通用组织层？

来源：

- OpenAI Developers Skills：<https://developers.openai.com/blog/skills-agents-sdk>
- Claude Agent Skills：<https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview>
- Figma Agent Skills：<https://www.figma.com/blog/got-skills-make-the-figma-agent-a-better-collaborator/>
- addyosmani/agent-skills：<https://github.com/addyosmani/agent-skills>
- Agent Plugins 1.0：<https://github.blog/changelog/2026-08-12-agent-plugins-1-0-in-vs-code-copilot-cli-and-the-copilot-app>

## 优先级 B：协议、工具与工程化

### Tool Calling / Function Calling

它是什么：模型不直接执行动作，而是生成结构化工具调用请求；应用程序执行工具后，把结果再交给模型继续推理。

为什么重要：这是 Agent 调用外部世界的底层机制。MCP、Agent SDK、各种插件系统都建立在类似思想上。

来源：

- OpenAI Tool Calling: <https://developers.openai.com/api/docs/guides/function-calling>

### A2A

全称：Agent2Agent Protocol。

它是什么：Google 提出的 agent 之间通信和协作协议，目标是让不同厂商、不同框架里的 agent 能互相发现、交换信息、协同行动。

和 MCP 的区别：

- MCP 更偏“Agent 连接工具和数据”。
- A2A 更偏“Agent 连接 Agent”。

来源：

- Google Developers Blog: <https://developers.googleblog.com/en/a2a-a-new-era-of-agent-interoperability/>
- A2A GitHub: <https://github.com/a2aproject/A2A>
- IBM A2A: <https://www.ibm.com/think/topics/agent2agent-protocol>

### Evals

它是什么：用数据集、评分器、人工标准或自动评估方法，衡量模型或 agent 在任务上的表现。

为什么重要：Agent 进入真实工作流后，不能只凭“感觉不错”。需要知道成功率、失败类型、成本、延迟、稳定性和回归情况。

来源：

- OpenAI Agent Evals: <https://developers.openai.com/api/docs/guides/agent-evals>
- OpenAI Agents SDK: <https://openai.github.io/openai-agents-python/>

### Observability / Tracing

它是什么：记录 agent 每一步做了什么、调用了哪些工具、花了多少 token、为什么失败。Tracing 是观察 agent 内部执行路径的关键手段。

为什么重要：没有 tracing，agent 出错后很难复盘；没有复盘，就很难改进 prompt、工具、上下文或评测。

最近判断更新：

- `session streaming`、`tool-call visibility`、`session events` 正在让 tracing 从后台调试能力进入默认工作界面。
- 这说明 observability 不再只是工程团队的排障工具，而会直接影响普通开发者如何信任、审查和接管 agent。
- `usage metrics` 与 `review / takeover` 正开始靠近，说明 observability 可能继续从“过程可见”长到“团队治理与采购判断”的组织层。
- `impact dashboard`、`adoption phase`、`review policy` 这组产品信号继续说明，observability 不会只停留在 tracing 后台；它正进入 `团队汇报、采购判断、规则接管、默认审查流程` 的组织层。

来源：

- OpenAI Agents SDK Guide: <https://developers.openai.com/api/docs/guides/agents>

### Guardrails

它是什么：对输入、输出、工具调用、权限、成本和敏感行为设置检查与限制。

为什么重要：Agent 不是只生成文本，它会调用工具、访问数据、执行动作，所以安全边界比普通聊天机器人更重要。

最近判断更新：

- `review policy`、`automation controls`、`user-scoped permissions` 正在从单点产品功能升级成默认治理层。
- 这说明 Guardrails 的下一阶段不只是“拦危险动作”，还包括 `谁批准、谁接管、谁拥有权限边界、如何审计回退`。
- 对前端开发者和 coding agent 使用者来说，后续比较平台时，`review / approval / auth boundary / rollback` 应与模型能力同级观察。
- `Codex review rules` 与 `Copilot code review` 的连续官方动作说明，`review policy + automation boundary` 已开始从产品功能变成默认工作流治理层。

来源：

- OpenAI Agents SDK Guardrails: <https://openai.github.io/openai-agents-python/guardrails/>
- OpenAI Practical Guide PDF: <https://cdn.openai.com/business-guides-and-resources/a-practical-guide-to-building-agents.pdf>
- GitHub Issues automation controls：<https://github.blog/changelog/2026-07-24-agent-automation-controls-in-github-issues-in-public-preview/>
- OpenAI Codex review rules：<https://developers.openai.com/blog/custom-code-review-rules-for-codex>

## 优先级 C：记忆、自生长与具体项目

### Memory

它是什么：Agent 跨会话保存事实、偏好、项目背景、决策、经验和技能的能力。

为什么重要：没有 memory 的 agent 每次都像新同事；有 memory 的 agent 才可能长期协作。

需要区分：

- Short-term memory：当前任务上下文。
- Long-term memory：跨会话保留。
- Episodic memory：过去发生过什么。
- Semantic memory：稳定事实和知识。
- Procedural memory：怎么做某类任务，也就是技能。

最近判断更新：

- coding agent 的 memory 正在从“保存会话摘要”转向 `代码图谱 + 检索压缩 + 审计友好` 的 repo 级结构层。
- `code-review-graph`、`codebase-memory-mcp` 这类样本说明，未来更重要的不是“记住更多”，而是“如何低 token 地记住真正相关的代码事实，并能回溯来源”。
- `OpenViking` 把 `Agent Memory`、`Knowledge RAG`、`Skills` 明确收进同一个上下文数据库对象，说明 memory 的下一步可能不只是“保存过去”，而是升级为 `context database / execution substrate`。这条线还需要继续观察，但重要性已经高于普通单点 memory 插件。

### claude-mem

它是什么：一个面向 Claude Code 的开源持久记忆插件，目标是跨会话保留项目上下文、工具使用观察和语义摘要。

为什么值得关注：它代表了 coding agent 记忆层的一条路线：自动捕捉工作过程 -> 压缩总结 -> 下次会话注入相关上下文。

关注问题：

- 它保存什么，不保存什么？
- 记忆如何检索和注入？
- 多项目、多机器、跨 agent 共享记忆是否可靠？

来源：

- GitHub: <https://github.com/thedotmack/claude-mem>
- 文档安装页：<https://docs.claude-mem.ai/installation>
- 共享记忆讨论：<https://github.com/thedotmack/claude-mem/discussions/1329>

### Hermes Agent

它是什么：Nous Research 推出的开源自改进 Agent，强调持久记忆、从经验创建 skills、跨会话学习、MCP 支持和多平台运行。

为什么值得关注：它把“自生长 agent”做成产品形态，方向和你的自生长知识库很接近：持续运行、保留上下文、沉淀技能、逐渐更懂用户。

关注问题：

- 它的 learning loop 如何实现？
- skill 是人工写的，还是 agent 从经验中生成的？
- 记忆质量如何避免污染？
- MCP 接入是否安全？

来源：

- Hermes Agent 官网：<https://hermes-agent.nousresearch.com/>
- GitHub: <https://github.com/nousresearch/hermes-agent>
- 文档：<https://hermes-agent.nousresearch.com/docs/>
- MCP 文档：<https://hermes-agent.nousresearch.com/docs/user-guide/features/mcp>

## 建议新增到知识库的主题地图

当前已有：

- `30-主题地图/Agent.md`
- `30-主题地图/RAG.md`
- `30-主题地图/LLM.md`
- `30-主题地图/模型评测.md`

建议后续新增：

- `30-主题地图/MCP.md`
- `30-主题地图/Context Engineering.md`
- `30-主题地图/Agent Memory.md`
- `30-主题地图/Loop Engineering.md`
- `30-主题地图/AI Agent产品.md`

## 建议拆成原子知识的候选条目

- RAG 是让 LLM 使用外部知识的架构，不只是向量数据库。
- MCP 解决的是 Agent 与工具/数据源的连接标准化问题。
- A2A 解决的是 Agent 与 Agent 之间的互操作问题。
- Agent Loop 是 Agent 能长期执行任务的核心结构。
- Loop Engineering 是从手写 prompt 转向设计自执行循环。
- Context Engineering 是 Agent 可靠性的核心工程问题。
- claude-mem 代表 coding agent 的持久记忆层实践。
- Hermes Agent 代表自改进、自生长 agent 的产品化路线。
- Evals 和 tracing 是 Agent 从 demo 进入生产的分水岭。
- Guardrails 不是可选项，Agent 一旦能操作工具，就必须做权限和审计。

## 我的初步判断

短期最值得跟踪的主线不是“又出了哪个模型”，而是：

1. Agent 如何连接工具：MCP、tool calling、browser/computer use。
2. Agent 如何持续执行：agent loop、loop engineering、workflow vs agent。
3. Agent 如何长期变聪明：memory、skills、claude-mem、Hermes Agent。
4. Agent 如何进入生产：evals、tracing、guardrails、权限治理。

这四条线可以作为后续 AI/Agent 知识库的一级观察框架。

## 下一步问题

- 是否应该把 `MCP` 升级成独立主题地图？
- Loop Engineering 是短期热词，还是 coding agent 的长期方法论？
- claude-mem 和 Hermes Agent 的记忆机制能不能启发这个知识库的自动增强？
- 你的知识库以后是更像 RAG 知识问答系统，还是更像 Hermes Agent 那样的持续个人研究助手？
