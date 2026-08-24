# GitHub Models 退场与 workflow layer 证据

类型：官方文档 / 官方 changelog / 原始资料

来源：

- GitHub Changelog：<https://github.blog/changelog/2026-07-01-github-models-is-being-fully-retired-on-july-30-2026/>
- GitHub Changelog：<https://github.blog/changelog/2026-07-02-copilot-agent-session-streaming-is-now-in-public-preview/>
- GitHub Changelog：<https://github.blog/changelog/2026-05-13-introducing-copilot-cli-agent-and-unified-sessions-view-in-github-copilot-for-jetbrains-ides/>
- Vercel Blog：<https://vercel.com/blog/ai-sdk-7>

访问日期：2026-07-14

## 为什么收藏

这组官方来源共同支撑一个长期判断：平台价值正在从 `model catalog` 迁移到 `workflow layer`。`GitHub Models` 全面退场，和 Copilot 的 session visibility、tool-call visibility、统一会话流，以及 Vercel AI SDK 7 的 runtime context / skill / MCP Apps 强化，形成了连续证据链。

## 关键内容中文摘要

- GitHub 官方已确认：`GitHub Models` 将于 `2026-07-30` 全面退役，playground、model catalog、inference API 和 BYOK 都将下线。
- GitHub Copilot 正在强化 `agent session streaming`，让企业能直接查看 prompts、responses、tool calls 等 session activity。
- GitHub 也在把统一 sessions view、live progress、tool calls 等能力放进 Copilot 的主界面层。
- Vercel AI SDK 7 则继续把 `skills support`、`runtime context`、`terminal UI`、`MCP Apps` 等能力往同一层收。

## 对当前知识库的意义

这说明以后判断平台，不应先看“模型目录有多大”，而应先看：

- 它如何组织任务执行。
- 它如何展示过程和工具调用。
- 它如何处理 skill、context、approval、governance。
- 它能否把执行结果接进真实工作流。

## 相关笔记

- [[../../20-原子知识/概念/为什么 workflow layer 正在压过 model catalog]]
- [[../../30-主题地图/AI 基础设施]]
- [[../../30-主题地图/Agent]]

## 待确认问题

- 这条变化对个人开发者最先产生影响的，是产品选择，还是自己做 MCP / workflow 的优先级？
- 除 GitHub 与 Vercel 外，还应补哪些官方平台作为同类证据？
