# 为什么 workflow layer 正在压过 model catalog

标签：#agent #workflow-layer #model-catalog #governance #observability #概念

## 核心内容

AI 平台的长期竞争点，正在从“接了多少模型”转向“能不能把任务稳定执行、可审查、可接管、可授权地跑完”。`model catalog` 仍然重要，但它越来越像基础能力；真正拉开差距的，开始变成 `workflow layer`，也就是任务执行、会话可见性、工具调用、审批边界、runtime context、成本控制和治理层。

## 我的判断

`GitHub Models` 将于 2026-07-30 全面退场，是这条变化最直接的信号之一。平台如果只提供模型目录和推理入口，护城河并不牢；而 GitHub Copilot、Vercel AI SDK、Codex 这类产品都在继续往执行层、工具层和治理层加厚。

这意味着以后判断一个平台值不值得长期关注，不能只看它挂了多少模型，而要看它是否具备：

- 会话和执行过程可见性
- 工具调用与权限边界
- runtime context 与 skill 注入
- 预算、审计、审批和回滚
- 能否把任务结果沉淀进真实工作流

对我自己的知识库和 MCP 方向也一样。长期价值不会来自“再接几个模型名”，而更可能来自“如何把建议、确认、写入、地图更新和回溯做成稳定闭环”。

## 为什么它重要

- 模型目录越来越容易被替代，执行工作流和治理结构更难复制。
- 当多个平台都能调用类似模型时，差异会转移到 routing、approval、trace、memory 和 UI。
- `session visibility / tool-call visibility` 说明执行过程本身正在变成产品界面的一部分。
- `runtime context`、`skills`、`MCP Apps` 说明平台正在把“组织经验 + 工具接入 + 执行边界”收进同一层。
- 对个人项目来说，这条线能直接指导我先做什么基础层，而不是被新模型名带着跑。

## 来源

- [[../../00-入口/今日整理建议]]
- [[../../10-输入流/概念雷达/每日筛选/2026-07-14-概念筛选]]
- [[../../10-输入流/原始资料/GitHub Models 退场与 workflow layer 证据]]
- [GitHub Models is being fully retired on July 30, 2026](https://github.blog/changelog/2026-07-01-github-models-is-being-fully-retired-on-july-30-2026/)
- [Copilot agent session streaming is now in public preview](https://github.blog/changelog/2026-07-02-copilot-agent-session-streaming-is-now-in-public-preview/)
- [AI SDK 7 is now available](https://vercel.com/blog/ai-sdk-7)

## 相关主题

- [[../../30-主题地图/AI 基础设施]]
- [[../../30-主题地图/Agent]]
- [[../../30-主题地图/LLM]]

## 下一步问题

- 我自己的知识库 MCP，更该优先补 workflow layer 的哪一层：建议、确认、地图更新，还是 trace？
- 如果 model catalog 价值下降，个人项目是否还需要做 AI gateway，还是先把执行治理层做稳？
- 哪些工具正在真正体现 `workflow layer > model catalog`：Codex、Copilot、Vercel AI SDK，还是更偏 agent command center 的产品？
