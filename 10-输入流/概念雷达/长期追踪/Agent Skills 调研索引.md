# Agent Skills 调研索引

最近更新：2026-07-03

用途：把 `Agent Memory`、`Self Improving Agent`、`Agent Browser`、`Capability Evolver`、`Proactive Agent` 这组容易混淆的词，按“是否已有 skill / skill 解决什么 / 风险如何 / 是否值得跟踪”来整理。

## 核心判断

这些词既可以表示 Agent 的能力层，也可以被封装成 Agent Skill。

更准确的关系是：

```text
能力层：Agent 需要具备什么能力
Skill 层：把这种能力封装成可复用工作流或工具说明
工具层：Skill 背后调用的 CLI、MCP、数据库、浏览器或脚本
```

所以：

```text
Agent Memory 不是天然等于 skill
但可以有 agent-memory skill

Agent Browser 不是天然等于 skill
但可以有 agent-browser skill

Self Improving Agent 不是天然等于 skill
但可以有 self-improving-agent meta-skill
```

## 按 Skill 分类

| 名称 | 是否已有 skill 形态 | 代表来源 | 作用 | 跟踪优先级 | 风险判断 |
| --- | --- | --- | --- | --- | --- |
| Agent Memory | 是 | `agentmemory`、`obsidian-agent-memory-skills`、`memory-systems` | 给 agent 提供持久记忆、语义检索、知识库/笔记记忆。 | A | 重点看“记什么、不记什么、如何遗忘”。 |
| Self Improving Agent | 是 | `self-improving-agent`、`opencode-autolearn`、`Grail-Computer/Self-Improving-Agent` | 任务完成后记录经验、错误、改进点，并生成/更新规则或 skills。 | A | 容易过度自改，需要人工确认和边界。 |
| Agent Browser | 是 | `vercel-labs/agent-browser`、`agent-browser-skill` | 给 agent 提供浏览器自动化、页面观察、元素引用和交互能力。 | A | 前端开发高度相关；要注意浏览器权限和会话隔离。 |
| Capability Evolver | 是 | `EvoMap/evolver` / `capability-evolver` | 分析运行历史，识别能力缺口，尝试演化/更新 agent 能力。 | B | 有明确安全争议，不能直接安装，适合只研究架构思想。 |
| Proactive Agent | 是 | `proactive-agent`、`proactive-agent-lite`、`proactive-self-improving-agent` | 让 agent 从被动执行变成主动提醒、监控、提议下一步。 | A- | 关键是减少打扰，必须有触发条件和确认机制。 |

## 分别怎么看

### Agent Memory Skill

代表项目：

- `jayzeng/agentmemory`
- `rohitg00/agentmemory`
- `obsidian-agent-memory-skills`
- `memory-systems`
- `agent-memory-systems`

这类 skill 解决：

- 如何把会话经验写入长期记忆。
- 如何在下次任务前检索相关记忆。
- 如何把 Obsidian、SQLite、知识图谱或文件系统作为 memory backend。

对我的启发：

- 我的知识库不应该自动记住所有内容。
- 应该区分事实、偏好、经验、操作流程和错误教训。
- 未来 `knowledge-workspace-mcp` 可以加“记忆候选建议”，但写入必须确认。

### Self Improving Agent Skill

代表项目：

- `peterskoett/self-improving-agent`
- `opencode-autolearn/skills/self-improving-agent`
- `Grail-Computer/Self-Improving-Agent`
- `claude-skills/self-improving-agent`

这类 skill 解决：

- 任务结束后复盘。
- 捕捉错误、用户纠正、知识空白、重复流程。
- 把稳定经验晋升为规则、memory 或 skill。

对我的启发：

- 适合做成晚上 21:00 任务的一部分。
- 但不能让 agent 自动改规则太频繁。
- 更好的方式是生成“改进建议”，由我确认后写入规则或 skill。

### Agent Browser Skill

代表项目：

- `vercel-labs/agent-browser`
- `BowTiedSwan/agent-browser-skill`
- 一些个人基础设施仓库里的 Browser skill

这类 skill 解决：

- 浏览器自动化。
- 页面状态观察。
- 元素引用。
- 前端验证和数据提取。

对我的启发：

- 这和 `浏览器接入式 coding agent` 直接相关。
- 可作为 `Frontend QA MCP` 的参考。
- 我最应该关注的是：截图、console、network、DOM、响应式布局检查如何形成默认验收 loop。

### Capability Evolver Skill

代表项目：

- `EvoMap/evolver` / `capability-evolver`

这类 skill 解决：

- 从运行历史发现能力缺口。
- 尝试更新或生成新能力。
- 通过协议约束方式演化 agent。

重要风险：

- 公开搜索结果里存在关于 `capability-evolver` 的安全报告，提到数据外传风险。
- 因此这个方向只能研究思想，不能直接安装陌生 skill。

对我的启发：

- 能力演化应该先以“建议”形式出现，而不是自动改系统。
- 如果未来做自己的 Capability Evolver，必须有 diff 审查、最小权限、网络出口限制和回滚机制。

### Proactive Agent Skill

代表项目：

- `halthelobster/proactive-agent`
- `proactive-agent-lite`
- `proactive-self-improving-agent`
- `thunlp/ProactiveAgent` 更偏研究/系统，不一定是 skill。

这类 skill 解决：

- 主动提醒。
- 监控异常。
- 识别上下文变化。
- 在合适时间建议下一步。

对我的启发：

- 你现在的 `21:00 每日知识推进确认` 就是一个轻量 proactive agent。
- 好的 proactive 不是频繁打扰，而是只在“有明确候选 + 有下一步动作”时出现。

## 对当前知识库的改造建议

1. 建议后续拆一篇原子知识：`Agent Skill 与 Agent Memory 的区别`。
2. 不要直接安装陌生 self-improving / capability-evolver skill。
3. 优先学习 `agent-browser` 和 `agent-memory`，因为它们和前端开发、知识库整理最相关。

## 跟踪优先级

第一优先：

- Agent Browser Skill
- Agent Memory Skill
- Proactive Agent Skill

第二优先：

- Self Improving Agent Skill

谨慎观察：

- Capability Evolver Skill

## 参考来源

- agentmemory：<https://github.com/jayzeng/agentmemory>
- rohitg00/agentmemory：<https://github.com/rohitg00/agentmemory>
- obsidian-agent-memory-skills：<https://github.com/adamtylerlynch/obsidian-agent-memory-skills>
- memory-systems：<https://github.com/muratcankoylan/Agent-Skills-for-Context-Engineering/blob/main/skills/memory-systems/SKILL.md>
- agent-memory-systems：<https://github.com/davila7/claude-code-templates/blob/main/cli-tool/components/skills/ai-research/agent-memory-systems/SKILL.md>
- self-improving-agent：<https://github.com/peterskoett/self-improving-agent>
- opencode-autolearn self-improving-agent：<https://github.com/ericmjl/opencode-autolearn/blob/main/skills/self-improving-agent/SKILL.md>
- Grail-Computer/Self-Improving-Agent：<https://github.com/Grail-Computer/Self-Improving-Agent>
- agent-browser：<https://github.com/vercel-labs/agent-browser>
- agent-browser skill：<https://github.com/BowTiedSwan/agent-browser-skill>
- capability-evolver：<https://github.com/EvoMap/evolver/blob/main/SKILL.md>
- capability-evolver 安全报告：<https://github.com/openclaw/openclaw/issues/11879>
- proactive-agent：<https://github.com/halthelobster/proactive-agent>
- proactive-self-improving-agent：<https://github.com/yanhongxi-openclaw/proactive-self-improving-agent>
- ProactiveAgent 研究项目：<https://github.com/thunlp/ProactiveAgent>
