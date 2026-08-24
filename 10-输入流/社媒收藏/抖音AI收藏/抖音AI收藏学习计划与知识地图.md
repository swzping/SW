# 抖音 AI 收藏学习计划与知识地图

状态：#学习计划 #知识地图 #项目雷达 #待补链接

## 总判断

这批收藏表面上很多，实际只有一条主线：你不是在泛泛学习 AI，而是在收集一套“个人可执行 AI 工作系统”的组件。

这套系统可以拆成六层：

1. `执行入口`：Codex、Claude Code、Cursor、Trae、OpenCode。
2. `能力封装`：Skill、Agent Skills、OpenClaw Skills、仓颉 Skill。
3. `工具连接`：MCP、Computer Use、浏览器自动化、平台/API 接入。
4. `记忆与知识库`：Obsidian、自生长知识库、Agent Memory、IMA / ima-skills。
5. `工程可靠性`：Context Engineering、Evals、测试工具、Midscene、日志、权限、成本。
6. `垂直应用`：AI 投研、内容生产、设计到代码、自媒体发布、团队管理。

学习重点不应是“收藏更多工具”，而应是：选一个真实任务，让 Agent 完成，并把可复用方法沉淀为 Skill。

## 知识分类地图

| 类别 | 你收藏中反复出现的内容 | 应该学到什么 | 产出物 |
|---|---|---|---|
| Coding Agent 基础 | Codex、Claude Code、Cursor、OpenCode、Trae | 如何把任务交给 Agent，而不是只聊天或补全代码 | 一套任务委派模板 |
| Skill / 工作流资产化 | Agent Skills、OpenClaw Skills、仓颉 Skill、FFmpeg Skill、Manim Skill | 如何把一次成功流程封装成可重复执行能力 | 3 个自用 Skill |
| MCP / 工具连接 | Codex 连平台、MCP、浏览器自动化、外部 API | Agent 如何安全读取数据、调用工具、操作页面 | 工具连接清单 |
| 知识库 / 记忆 | Codex + Obsidian、自生长知识库、Agent Memory、IMA | 如何让资料可读、可追溯、可复用 | 社媒收藏入库流程 |
| Agent 工程化 | 多 Agent、Team Agent、Hermes Agent、OpenClaw、Paperclip | 如何拆分角色、交接状态、评估结果 | 一个小型 Agent 团队原型 |
| 前端 / AI 编程工程化 | AI 写代码、组件复用、前端四层锁、Midscene、OpenCode | 如何让 AI 生成的代码可维护、可测试 | 一个测试过的小组件/工具 |
| 内容生产自动化 | 自动出片、AI 漫剧、选题、FFmpeg、Manim、自媒体发布 | 如何建立完整生产链，而不是追“一键神器” | 一个内容生产 SOP |
| AI 投研 / 数据 | a-stock-data、TradingAgents、AI 投研助理、A 股数据 | 如何用真实数据、回测和风险控制约束 AI 判断 | 一个纸面投研助理 |
| AI Gateway / 成本 | FreeLLMAPI、模型聚合、便宜 API、中转站 | 如何判断路由、fallback、密钥和成本风险 | 模型调用方案对比 |

## 每类知识怎么学

这一部分是给你真正执行用的。不要一类一类“读完”，而是每周选一个真实任务，把对应类别里的方法用进去。

### 1. Coding Agent 基础

- 核心问题：怎样把一个模糊想法交给 Codex / Claude Code，让它产出可验收结果。
- 先学什么：任务说明、输入输出、限制条件、验收标准、上下文管理。
- 代表线索：Codex、Claude Code、Cursor、Trae、OpenCode、自定义指令、Handoff。
- 第一练习：把“继续采集 100 条抖音 AI 收藏”写成一份稳定任务说明，包括不重复、截图证据、日期判断、输出目录。
- 可沉淀：`Agent任务委派模板.md`。

### 2. Skill / 工作流资产化

- 核心问题：怎样把一次成功流程变成以后能反复调用的能力。
- 先学什么：Skill 的触发条件、输入输出、步骤、边界、失败处理、安全审查。
- 代表项目：cangjie-skill、OpenClaw Agent Skills、awesome-openclaw-skills。
- 第一练习：把“抖音 AI 收藏采集、OCR、去重、分类、补链接”封装成一个自用 Skill 草稿。
- 可沉淀：`抖音AI收藏整理Skill v1`、`Skill安全检查清单.md`。

### 3. MCP / 工具连接

- 核心问题：怎样让 Agent 不只会说，还能安全读取文件、调用网页、连接 API、操作工具。
- 先学什么：MCP 的资源/工具边界、权限、只读与写入、凭据管理、失败回滚。
- 代表线索：MCP、Computer Use、浏览器自动化、Firecrawl、平台/API 接入。
- 第一练习：做一个“读取本地收藏总表 -> 找重复 -> 输出新增候选”的最小工具连接流程。
- 可沉淀：`工具连接清单.md`。

### 4. 知识库 / 记忆

- 核心问题：怎样让收藏不是堆积，而是变成可检索、可追溯、可复用的知识系统。
- 先学什么：输入流、证据表、原子知识、主题地图、长期记忆分别放什么。
- 代表线索：Codex + Obsidian、自生长知识库、IMA / ima-skills、Agent Memory。
- 第一练习：从总表里挑 10 条高价值收藏，只升级 3 条为“原子知识”，每条必须保留来源证据。
- 可沉淀：`社媒收藏入库规则.md`、`Agent Memory 保存规则.md`。

### 5. Agent 工程可靠性

- 核心问题：怎样判断 AI 的结果是否可靠，而不是“看起来像完成了”。
- 先学什么：Context Engineering、测试、日志、成本、权限、Evals、人工复核点。
- 代表项目：Midscene、前端工程化四层锁、Agent 评估清单。
- 第一练习：给一个 AI 生成的小页面或小脚本写验收清单，并让 Agent 自测后再交付。
- 可沉淀：`Agent交付验收清单.md`。

### 6. 多 Agent / Agent 团队

- 核心问题：什么时候需要多个 Agent，什么时候一个 Agent 加清晰流程就够了。
- 先学什么：planner / executor / reviewer 分工，交接文档，状态表，责任边界。
- 代表项目：Paperclip、TradingAgents、Team Agent、OpenClaw。
- 第一练习：只做 3 角色小流程：计划者列任务，执行者采集整理，审查者检查重复和证据。
- 可沉淀：`三角色Agent流程模板.md`。

### 7. 垂直应用：AI 投研

- 核心问题：怎样用数据和验证约束 AI，而不是让 AI 编故事。
- 先学什么：行情/公告/新闻数据源、回测、纸面交易、风险控制、样本外验证。
- 代表项目：TradingAgents、本地 a-stock-data 技能。
- 第一练习：连续 5 天做纸面投研日报，只记录“可验证观察”，不做实盘建议。
- 可沉淀：`AI投研日报模板.md`。

### 8. 垂直应用：内容生产

- 核心问题：怎样从选题到发布形成流水线，而不是迷信一键出片。
- 先学什么：选题、资料核验、脚本、画面、音频、剪辑、发布、数据复盘。
- 代表项目：MoneyPrinterTurbo、FFmpeg Skill、Manim Skill、自动发布工具。
- 第一练习：把一条 AI 收藏转成 60 秒讲解脚本，并记录人工修改量。
- 可沉淀：`AI内容生产SOP.md`。

### 9. AI Gateway / 成本与模型调用

- 核心问题：怎样在成本、稳定性、安全和模型效果之间做取舍。
- 先学什么：OpenAI-compatible API、路由、fallback、密钥管理、调用日志、预算。
- 代表项目：FreeLLMAPI、模型聚合/中转相关线索。
- 第一练习：做一张模型调用方案对比表，只比较真实可用、可追踪成本的方案。
- 可沉淀：`模型调用成本与风险表.md`。

## 项目与链接雷达

### 已确认或值得优先核验

| 项目 / 主题 | 链接 | 收藏中对应线索 | 学习价值 | 优先级 |
|---|---|---|---|---|
| cangjie-skill | https://github.com/kangarooking/cangjie-skill | 开源仓颉 Skill：蒸馏任何视频 | 把视频/资料转成可复用 Skill，和你的收藏整理任务高度同构 | 高 |
| Firecrawl | https://github.com/mendableai/firecrawl | Firecrawl 免 API 调用、网页抓取 | Agent/RAG 的数据获取层 | 中 |
| MoneyPrinterTurbo | https://github.com/harry0703/MoneyPrinterTurbo | GitHub 爆了，全自动出片 | 内容生产自动化对照样本，不宜直接当成熟系统 | 低到中 |
| FreeLLMAPI | https://github.com/tashfeenahmed/freellmapi | 节省 Token / OpenAI-compatible proxy | 轻量 AI Gateway、路由、fallback、成本意识 | 中 |
| OpenClaw | https://github.com/openclaw/openclaw | OpenClaw、ClawBot、个人 AI assistant | 本地/个人 Agent 容器，值得跟踪但要看实际边界 | 高 |
| OpenClaw Agent Skills | https://github.com/openclaw/agent-skills | Agent Skills、OpenClaw Skills | Skill 生态、复用工作流、技能安全 | 高 |
| awesome-openclaw-skills | https://github.com/VoltAgent/awesome-openclaw-skills | 700+ Skills、Skill 市场 | 技能目录参考；安装前必须安全审查 | 中 |
| OpenClaw Skills docs | https://docs.openclaw.ai/tools/skills | Skills 如何加载/配置 | 理解 Skill 的结构、优先级、allowlist、环境注入 | 高 |
| Midscene | https://github.com/web-infra-dev/midscene | AI 测试工具 Midscene | 视觉驱动 UI 测试/自动化，适合前端工程化 | 高 |
| Midscene 官网 | https://midscenejs.com/ | AI 测试、自然语言 UI 自动化 | 看文档和示例，验证是否能接入你的测试流程 | 高 |
| TradingAgents | https://github.com/tauricresearch/tradingagents | TradingAgents / AI 股神 | 多 Agent 金融框架，必须用回测和风控过滤营销 | 中 |
| TradingAgents 论文 | https://arxiv.org/pdf/2412.20138 | TradingAgents 框架 | 先读论文/结构，不要直接相信短视频收益叙事 | 中 |
| Paperclip | https://github.com/paperclipai/paperclip | Codex + Paperclip 打造一人公司 | 多 Agent 组织/任务/预算/治理，适合研究 Agent 公司化 | 高 |
| Paperclip 官网 | https://paperclip.ing/ | 一人公司、AI agent team | 看真实功能边界和部署复杂度 | 中到高 |

### 待补链接但应保留的主题

| 主题 | 为什么保留 | 下一步 |
|---|---|---|
| Codex + Obsidian 自生长知识库 | 和你当前知识库建设完全贴合 | 点开补链接，提取目录结构、写入边界、回溯证据 |
| Codex Handoff | 关系到长任务迁移和跨机器执行 | 核验官方说明，判断适合什么任务 |
| Codex 自定义指令 | 直接影响每天使用效果 | 提炼成自己的 instructions 模板 |
| Claude Code 必装开源工具 | 可能包含高价值 CLI/MCP/Skill | 补工具名，逐个核验 GitHub |
| 多 Agent 编排设计 | 决定以后是否做 Agent 团队 | 提取 planner / executor / reviewer / memory 分工 |
| Team Agent + 飞书多维表 | 适合任务状态和团队记忆 | 先做一个表格版任务看板原型 |
| 前端工程化四层锁 | 能约束 AI 生成代码质量 | 补原文，整理成“AI 生成代码接入规则” |
| AI 生成组件如何避免重复造轮子 | 对前端开发非常实用 | 转成组件库复用检查清单 |
| a-stock-data / AI 查 A 股真数据 | 和你已有技能强相关 | 用本地技能验证真实数据、回测和日报 |
| FFmpeg Skill / Manim Skill | 可变成真实内容生产工具链 | 各做一个最小 demo |

## 30 天学习计划

### 第 1 周：把 Agent 用稳

目标：不再把 Codex / Claude Code 当聊天工具，而是当可交付任务执行器。

每天做一件小事：

1. 写一个清楚的任务说明，包括目标、输入、输出、限制、验收标准。
2. 让 Agent 执行。
3. 记录失败点：理解偏差、上下文丢失、文件找错、结果没验证。
4. 把可复用提示沉淀到“任务模板”。

本周必学：

- Codex 基本工作流
- Claude Code / Codex 分工
- 自定义指令
- 上下文隔离
- 交付前验证

本周产出：

- `Agent任务委派模板.md`
- `抖音收藏采集SOP v1`
- 3 个失败案例复盘

### 第 2 周：把流程做成 Skill

目标：把“成功一次”变成“以后稳定复用”。

重点学习：

- Skill 的结构：触发条件、输入、步骤、工具、输出、失败处理。
- OpenClaw / Agent Skills 的组织方式。
- cangjie-skill 如何把资料蒸馏成 Skill。
- Skill 安全：不要盲装，先审查权限、脚本、外部调用。

本周实践：

1. 把“抖音收藏采集与去重”做成 Skill 草稿。
2. 把“视频/网页证据核验摘要”做成 Skill 草稿。
3. 把“资料升级为原子知识”做成 Skill 草稿。

本周产出：

- `抖音AI收藏整理Skill v1`
- `证据核验摘要Skill v1`
- `Skill安全检查清单.md`

### 第 3 周：接知识库、MCP 和记忆

目标：让 Agent 能读取旧证据、避免重复、写入结构化知识。

重点学习：

- Obsidian 作为 Agent 可读写知识库。
- MCP 连接本地文件、外部 API、浏览器工具。
- Agent Memory 应该记什么，不应该记什么。
- 每个结论如何回溯到链接、截图、OCR、官方来源。

本周实践：

1. 每天自动采集新增抖音收藏 AI 线索。
2. 自动和总表去重。
3. 只把高价值、已核验内容升级为知识。
4. 低价值内容留在输入流，不污染知识库。

本周产出：

- `社媒收藏 -> 证据表 -> 知识地图`闭环
- `Agent Memory 保存规则.md`
- 一个 MCP/本地文件读取实验

### 第 4 周：做一个可运行小系统

目标：选一个垂直方向，做连续 5-7 天的真实运行。

建议二选一：

#### 方向 A：AI 投研助理

适合你，因为你已经有 A 股数据技能。

最小系统：

- 每天读取行情、公告、新闻。
- 输出 3 条有来源的观察。
- 不做实盘建议，只做纸面验证。
- 记录次日是否验证。

要学：

- a-stock-data
- TradingAgents 的多角色结构
- 回测风险、未来函数、样本外验证

#### 方向 B：AI 内容生产流水线

适合做资料输出和自媒体。

最小系统：

- 输入一个主题。
- 自动找资料。
- 生成脚本。
- 用 FFmpeg/Manim 做一个小片段。
- 记录人工修改量和耗时。

要学：

- FFmpeg Skill
- Manim Skill
- 选题生成
- 自媒体自动发布的边界

本周产出：

- 一个运行 5 天的小系统
- 每天 1 条运行日志
- 最后写一份复盘：节省了什么、失败在哪里、下一版怎么改

## 60-90 天进阶路线

### 第 2 个月：从工具使用到工程化

重点：

- Context Engineering
- Prompt Engineering 到 Workflow Engineering
- Evals / Agent 评估
- Midscene / UI 测试
- 前端组件复用规则
- 日志、权限、成本、失败恢复

产出：

- `AI生成代码接入工程规则.md`
- `Agent评估清单.md`
- 一个 Midscene 小 demo
- 一个 AI 生成前端组件的测试流程

### 第 3 个月：从个人 Agent 到小型 Agent 团队

重点：

- 多 Agent 不是角色越多越好，而是交接、审查、状态和责任更清楚。
- Paperclip / Team Agent / 飞书多维表可以作为任务治理模型参考。
- OpenClaw / ClawBot 可以作为个人执行容器参考。

产出：

- 一个 3 角色 Agent 流程：planner / executor / reviewer
- 一个任务看板：目标、负责人、状态、证据、成本
- 一个“什么时候不用多 Agent”的判断清单

## 每天怎么学

每天只做 45-60 分钟，结构固定：

1. `10 分钟`：看当天自动采集新增 AI 收藏。
2. `10 分钟`：只挑 1 条最值得补链接的内容。
3. `20 分钟`：找官方文档、GitHub、论文或产品页核验。
4. `15 分钟`：写一条“可执行结论”，不是摘要。
5. `5 分钟`：决定是否升级为 Skill / 原子知识 / 主题地图。

当天最多处理 1-2 条。收藏很多没关系，真正升级的内容要少而硬。

## 每周复盘问题

- 我本周有没有把一个流程变得更稳定？
- 我有没有新增一个可复用 Skill？
- 我有没有补到官方链接或 GitHub，而不是只看短视频？
- 我有没有因为热度而学了不该学的东西？
- 哪个工具真正节省了时间？哪个只是看起来很酷？
- 哪个失败最值得写进知识库？

## 暂时不要投入太多的内容

- 只有“月入”“红利”“普通人翻身”的视频。
- 没有 GitHub、官方文档、论文或可验证案例的工具推荐。
- “AI 炒股能赚钱”但没有数据、回测、风控的内容。
- “一键出片/一键建站/一键公司”但没有成本和人工修改量的内容。
- Skill 数量清单本身。真正要学的是你自己的工作流如何 Skill 化。

## 最小可执行学习路径

如果只选一条路，就按这个顺序：

1. Codex / Claude Code 稳定委派任务。
2. 抖音 AI 收藏整理流程 Skill 化。
3. Codex + Obsidian 自生长知识库。
4. MCP / Agent Memory 连接本地资料。
5. Context Engineering 和 Evals，保证结果可靠。
6. 选择 AI 投研或内容生产做 30 天垂直实战。

最后的目标不是“学完 AI”，而是形成一套自己的 AI 工作系统：能收集信息、筛选证据、沉淀知识、执行任务、复盘失败，并持续变强。
