# AI/Agent 名词雷达索引

最近更新：2026-08-25

用途：这是一份“防止名词雪崩”的索引。它不追求收录所有新词，而是帮我判断一个名词属于什么层级、是否值得长期跟踪、下一步应该放进哪里。

## 使用规则

看到一个新名词时，先不要急着建原子知识。先问四个问题：

1. 它是概念、协议、模型、工具、产品，还是方法论？
2. 它会不会反复影响我的前端开发、Agent 使用或知识库建设？
3. 它是否有官方文档、开源项目、真实产品或持续讨论？
4. 它下一步应该进入每日概念沉淀、长期概念雷达、原子知识、主题地图，还是暂时忽略？

## 重要性标记

| 标记 | 含义 | 动作 |
| --- | --- | --- |
| A | 长期主线 | 建主题地图或持续更新主题地图。 |
| B | 值得跟踪 | 拆成原子知识，观察是否升级。 |
| C | 工具/产品案例 | 放产品项目或原始资料，按需跟踪。 |
| D | 暂时热词 | 只放每日概念沉淀，不单独维护。 |

## 底层概念

| 名词 | 类型 | 重要性 | 一句话理解 | 建议动作 |
| --- | --- | --- | --- | --- |
| LLM | 基础概念 | A | 大语言模型，是 Agent、RAG、工具调用等能力的底座。 | 已有 [[../../../30-主题地图/LLM]]。 |
| AI Agent | 基础概念 | A | 能围绕目标规划、调用工具、观察结果并继续行动的系统。 | 已有 [[../../../30-主题地图/Agent]]。 |
| RAG | 架构模式 | A | 检索外部知识后再生成回答。 | 已有 [[../../../30-主题地图/RAG]]。 |
| Agent Loop | 执行结构 | A | Agent 反复执行“计划 -> 工具 -> 观察 -> 修正”的循环。 | 建议后续拆原子知识。 |
| Context Engineering | 方法论 | A | 管理 Agent 能看到什么、记住什么、忽略什么。 | 建议建主题地图。 |
| Agent Memory | 能力层 | A | 让 Agent 跨会话保留事实、经验、偏好和技能。 | 建议建主题地图。 |

## 协议与连接层

| 名词 | 类型 | 重要性 | 一句话理解 | 建议动作 |
| --- | --- | --- | --- | --- |
| MCP | 协议 | A | 让 Agent 连接工具、数据源和工作流的开放协议。 | 建议建 `MCP` 主题地图。 |
| MCP Apps | 协议扩展 / app 形态 | B | 让 MCP 不只暴露工具，还可能带交互界面和工作流节点。 | 先挂在 `MCP` 主题下观察。 |
| A2A | 协议 | B | Agent 与 Agent 之间互操作的协议方向。 | 先拆原子知识。 |
| Tool Calling / Function Calling | 工具机制 | A | 模型输出结构化工具调用，由外部程序执行。 | 拆原子知识，链接 Agent。 |
| Computer Use | 工具能力 | B | Agent 操作桌面或浏览器 UI 的能力。 | 前端 QA 方向可跟踪。 |
| Browser Use | 工具能力 | B | Agent 控制浏览器进行测试、操作和验证。 | 前端 QA MCP 方向可跟踪。 |
| WebMCP / Site tools | 网站工具表面 / browser tool surface | B | 让网站直接向 `ChatGPT Work / Codex` 暴露可调用工具，说明网站正在从“被浏览对象”变成“可操作工具节点”。 | 挂到 `MCP` 与 `Browser Use` 交叉观察。 |
| Safari MCP server | 浏览器工具 / MCP server | B | 浏览器厂商把 Safari 调试能力暴露给 Agent 的 MCP 接口。 | 挂到 `Browser Use` 与 `MCP` 交叉观察。 |

## Agent 方法论

| 名词 | 类型 | 重要性 | 一句话理解 | 建议动作 |
| --- | --- | --- | --- | --- |
| Skill / Agent Skill | 方法/封装 | A | 把团队上下文、约束和流程封装成 Agent 可复用能力；它已跨 Codex、Copilot、Figma 等生态反复出现。 | 升级为长期主线，建议优先拆原子知识并考虑独立主题。 |
| Loop Engineering | 方法论 | A | 设计 Agent 自我推进、检查和修正的执行循环。 | 建议建主题地图。 |
| Codebase Memory | memory 工程层 | A | 把代码库结构、依赖、变更历史和检索压缩组织成 coding agent 可复用的 repo 级记忆层。 | 建议拆原子知识，并链接 `Agent Memory`、`Context Engineering`。 |
| Subagent | 架构模式 | B | 主 Agent 把子任务交给专门 Agent 处理。 | 链接 [[../../../20-原子知识/概念/Claude Code 团队模式]]。 |
| Multi-agent Workflow | 架构模式 | B | 多 Agent 分工、交接、审查的工作流。 | 先保留在 Agent 主题。 |
| Guardrails | 治理机制 | A | 对输入、输出、工具调用和权限设置安全边界。 | 建原子知识，链接模型评测。 |
| Enterprise-Managed Authorization | 治理机制 | A | MCP 进入企业授权、身份和租户管理层的信号。 | 建议后续拆原子知识，链接 `MCP`。 |
| Evals | 评测机制 | A | 衡量模型或 Agent 在任务中的表现。 | 已有 [[../../../30-主题地图/模型评测]]。 |
| Observability / Tracing | 工程能力 | A | 记录 Agent 每一步行为，方便调试和审计。 | 链接模型评测。 |

## 模型与平台

| 名词 | 类型 | 重要性 | 一句话理解 | 建议动作 |
| --- | --- | --- | --- | --- |
| Codex | 编码 Agent | A | OpenAI 的 coding agent，可读、改、运行代码，并支持 CLI、IDE、云端等形态。 | 已有 [[../../../20-原子知识/概念/Codex 如何接入 MCP]]。 |
| Claude Code | 编码 Agent | A | Anthropic 面向代码任务的 Agent/CLI 工作流。 | 链接 [[../../../20-原子知识/概念/Claude Code 团队模式]]。 |
| Claude Fable 5 | 模型 | B | Anthropic 面向长程推理和 Agent 工作的高能力模型。 | 作为模型观察项，暂不建主题地图。 |
| GPT-5.x | 模型线 | B | OpenAI 当前前沿模型线，影响 Codex 和 Agent 能力上限。 | 在 LLM 主题中跟踪。 |
| Team Chat Agent Entry | 工作流入口 | B | 让 agent 进入 Slack、chat workspace 或团队协作面板的入口层。 | 先挂在 `Agent` 主题下观察。 |
| Token-safe Connector Proxy | 基础设施模式 | A | 让 agent 以受控代理方式接入外部系统，而不暴露用户 token。 | 链接 `MCP`、`AI 基础设施`。 |

## 工具、项目与产品

| 名词           | 类型         | 重要性 | 一句话理解                                         | 建议动作                                                          |
| ------------ | ---------- | --- | --------------------------------------------- | ------------------------------------------------------------- |
| HyperFrames  | 前端/视频工具    | B   | HeyGen 开源的 HTML/CSS/JS 到视频渲染框架，面向 Agent 生成视频。 | 已有 [[../../../20-原子知识/产品项目/HyperFrames 与 Agent-native 视频生成]]。 |
| claude-mem   | 记忆项目       | B   | 面向 Claude Code 的持久记忆项目方向。                     | 已有 [[../../../20-原子知识/产品项目/claude-mem]]。                      |
| Hermes Agent | 自生长 Agent  | B   | 强调持久记忆、技能沉淀和 MCP 支持的 Agent 项目。                | 建产品项目笔记。                                                      |
| LangGraph    | Agent 框架   | B   | 构建可控 Agent workflow 的框架。                      | 前端不优先，但 Agent 架构可跟踪。                                          |
| OpenRouter   | AI Gateway | B   | 多模型路由、fallback 和成本控制平台。                       | 已有相关原子知识。                                                     |
| OpenHuman    | memory 工具  | B   | 把 memory / workspace / context database 收成开源样本。        | 作为 `memory workspace` 方向继续观察。                                    |
| OmniRoute    | AI Gateway  | B   | 多模型路由和控制面样本。                                  | 作为 `AI gateway / routing` 方向继续观察。                              |

## 前端开发者特别关注

| 名词 | 类型 | 重要性 | 一句话理解 | 建议动作 |
| --- | --- | --- | --- | --- |
| Frontend Workbench MCP | 自定义 MCP | A | 让 Codex 理解前端项目结构、组件、命令和检查流程。 | 建研究备忘录。 |
| Design System MCP | 自定义 MCP | A | 暴露组件库、设计 token、组件用法，减少重复造 UI。 | 建研究备忘录。 |
| Frontend QA MCP | 自定义 MCP | A | 自动检查页面 console、布局、响应式、截图和构建结果。 | 建研究备忘录。 |
| API Contract MCP | 自定义 MCP | B | 读取 OpenAPI/Swagger，生成类型、mock 和接口检查。 | 第二阶段考虑。 |
| i18n / Copy MCP | 自定义 MCP | B | 管理文案、翻译 key、硬编码文本检查。 | 第二阶段考虑。 |

## 当前最值得长期跟踪的 10 个

1. MCP
2. Agent Skill
3. Context Engineering
4. Loop Engineering
5. Agent Memory
6. Tool Calling
7. Evals
8. Observability / Tracing
9. Codex
10. HyperFrames

## 当前可以暂时不焦虑的

- 每一个新模型小版本：只在模型能力、成本或工具生态变化明显时记录。
- 每一个 AI 工具榜单里的新产品：没有真实工作流价值前先不收录。
- 社交媒体上只出现一次的缩写：先放每日概念沉淀，不拆原子知识。

## 下一步建议

- 优先把 `Skill / Agent Skill` 拆成原子知识，并评估是否独立成主题地图。
- 建一篇研究备忘录：`前端开发者 MCP 方向设计.md`。
- 未来每日概念沉淀都要回看这份索引，判断新词是新主线、旧概念变体，还是短期噪音。

## 参考来源

- Codex IDE extension：<https://developers.openai.com/codex/ide>
- Codex CLI GitHub：<https://github.com/openai/codex>
- OpenAI Skills blog：<https://developers.openai.com/blog/skills-agents-sdk>
- Claude Agent Skills：<https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview>
- Figma agent skills：<https://www.figma.com/blog/got-skills-make-the-figma-agent-a-better-collaborator/>
- MCP 官方文档：<https://modelcontextprotocol.io/docs/getting-started/intro>
- HyperFrames GitHub：<https://github.com/heygen-com/hyperframes>
- HyperFrames 官网：<https://hyperframes.heygen.com/>
- Anthropic Fable 5：<https://www.anthropic.com/news/claude-fable-5-mythos-5>
