# Knowledge Workspace MCP 设想

日期：2026-07-03

## 目标

做一个本地 MCP server，让 Codex 可以安全地读取和整理 `/Users/edy/Documents/SW` 里的 AI/Agent/LLM 自生长知识库。

它不是通用知识库平台，第一版只服务一个具体工作流：

```text
读取工作台 -> 推荐下一步 -> 用户确认 -> 创建原子知识 -> 更新主题地图
```

## 使用场景

用户可以在 Codex 中说：

```text
用 knowledge-workspace MCP 读取今日工作台，推荐今天该推进哪条想法。
```

或：

```text
把“我想做一个怎样的 MCP”整理成原子知识，先给我草稿，等我确认后再写入。
```

## 第一版工具

### read_workbench

读取：

```text
00-入口/今日工作台.md
```

用途：让 Codex 知道今天有哪些待处理输入、待拆解想法和下一步问题。

### read_suggestions

读取：

```text
00-入口/今日整理建议.md
```

用途：让 Codex 获取每日输入流智能处理结果。

### suggest_next_action

根据工作台和整理建议，推荐最值得推进的 1 条。

输出应包含：

- 推荐项。
- 建议动作。
- 推荐原因。
- 是否需要用户确认。

### create_atomic_note

在用户确认后创建原子知识。

写入位置：

```text
20-原子知识/
```

必须要求：

- 标题。
- 分类目录。
- 正文。
- `confirmed: true`。

### update_topic_map

在用户确认后更新主题地图。

写入位置：

```text
30-主题地图/
```

必须要求：

- 目标主题地图。
- 要新增的链接或判断。
- `confirmed: true`。

## 已实现的第一版

实现位置：

```text
mcp/knowledge-workspace-mcp/
```

当前已实现：

- `read_workbench`
- `read_suggestions`
- `create_atomic_note`

暂未实现：

- `suggest_next_action`
- `update_topic_map`

暂未实现的原因：第一版先验证 Codex 能通过 MCP 读取知识库和受控写入原子知识；主题地图更新涉及更高的编辑风险，适合第二版再做。

## Codex 接入方式

已通过 Codex CLI 注册全局 MCP server：

```bash
codex mcp add knowledge-workspace \
  --env KNOWLEDGE_BASE_ROOT=/Users/edy/Documents/SW \
  -- node /Users/edy/Documents/SW/mcp/knowledge-workspace-mcp/dist/server.js
```

配置位置：

```text
~/.codex/config.toml
```

配置片段：

```toml
[mcp_servers.knowledge-workspace]
command = "node"
args = ["/Users/edy/Documents/SW/mcp/knowledge-workspace-mcp/dist/server.js"]

[mcp_servers.knowledge-workspace.env]
KNOWLEDGE_BASE_ROOT = "/Users/edy/Documents/SW"
```

在 Codex 中可以这样使用：

```text
用 knowledge-workspace MCP 读取今日工作台，并告诉我今天最值得推进的一条想法。
```

或者：

```text
用 knowledge-workspace MCP 读取今日整理建议，把建议创建的原子知识先给我草稿，等我确认后再写入。
```

注意：当前会话的工具列表可能不会动态刷新。新建线程或重启 Codex 后，通常更容易看到新 MCP server。

## 验证记录

2026-07-03 已验证：

- `npm test`：5 个测试通过。
- `npm run build`：TypeScript 构建通过。
- MCP stdio smoke test：成功列出 `read_workbench`、`read_suggestions`、`create_atomic_note`，并成功读取 `今日工作台.md`。

## 安全边界

- MCP server 只能访问 `/Users/edy/Documents/SW`。
- 读操作可以自动执行。
- 写操作必须要求用户确认。
- 不允许覆盖已有原子知识，除非用户明确要求更新。
- 不自动批量创建大量笔记。

## 第一版不做什么

- 不做向量数据库。
- 不做全网抓取。
- 不做多用户权限。
- 不做复杂 UI。
- 不自动把所有日报拆成原子知识。

## 验收标准

- [x] Codex 能通过 MCP 读取今日工作台。
- [ ] Codex 能给出下一步整理建议。
- [x] 用户确认后，MCP 能创建一篇原子知识。
- [ ] 用户确认后，MCP 能把新笔记链接到主题地图。
- [x] 所有写入都限制在知识库目录内。

## 相关资料

- [[../../10-输入流/原始资料/Codex MCP 官方文档]]
- [[../../20-原子知识/概念/Codex 如何接入 MCP]]
- [[../../20-原子知识/概念/我想做一个怎样的 MCP]]
