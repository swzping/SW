# Bright Path 插件理解与后续规划

标签：#Codex #Plugin #Skill #MCP #工作流 #知识库 #个人IP

日期：2026-07-14

## 今日一句话

今天对 Codex 插件的理解从“一个可安装的小工具”推进到了“承载个人工作流的能力包”：插件是包装单位，Skill 是方法，MCP 是外部工具接口，Hooks 是自动触发器，References/Docs 是可复用知识，Marketplace/Cache 是分发与运行机制。

## 今天形成的核心理解

### 1. 插件不是单一功能，而是能力包

Codex 插件可以理解为：

```text
Plugin = skills + MCP + hooks + apps + assets + docs + config
```

它不是必须一次包含全部组件，但可以逐步长成一个完整工作流系统。

当前对各组件的理解：

- `skills`：定义什么时候用、怎么判断、怎么输出，是“方法和认知流程”。
- `MCP`：连接外部工具、知识库、服务或本地系统，是“工具接口”。
- `hooks`：在会话启动、工具调用后、停止前等时机触发，是“自动化提醒或注入器”。
- `assets`：图标、Logo、展示资源，是“产品外观”。
- `references`：指南、模板、流程、风格规范，是“知识和操作手册”。
- `scripts`：本地维护或辅助操作，是“开发与迭代工具”。
- `marketplace.json`：让 Codex app 发现插件，是“注册入口”。
- `cache`：Codex 安装后的运行副本，是“运行时副本”，不应手动编辑。

### 2. 插件可以承载工作流

插件和工作流不是同一个词，但可以这样理解：

```text
插件是包装盒，工作流是它承载的一条做事路径。
```

Bright Path 当前承载了几条工作流：

- 个人规划：想法整理、计划、复盘、决策。
- 知识库检索：读取本地 SW 知识库。
- 外部知识连接：通过 IMA Copilot MCP 连接外部知识库。
- 网络博主工作流：选题、草稿、多平台改写、发布检查、复盘沉淀。

### 3. 源码和缓存要分开

Bright Path 源码位置：

```text
/Users/edy/plugins/bright-path
```

Codex 缓存副本位置类似：

```text
/Users/edy/.codex/plugins/cache/personal/bright-path/...
```

关键认知：

- 日常只改源码目录。
- `cache` 是 Codex 运行读取的安装副本，可能被刷新、替换或清理。
- `update_plugin_cachebuster.py` 只更新源码版本标记，不会自动替换 cache。
- cache 真正刷新需要在 Codex app 插件页面重新安装/刷新。

### 4. 中文插件需要注意 JSON 转义

`update_plugin_cachebuster.py` 会用 Python 默认 `json.dumps()` 写回 `plugin.json`，中文会变成 `\uXXXX`。

这不影响 Codex 读取，但影响人读文件。

Bright Path 已补充：

```text
scripts/format-plugin-json.py
scripts/refresh-local-plugin.sh
```

当前维护流程：

```text
更新 cachebuster -> 中文格式化 plugin.json -> validate_plugin.py 校验
```

## Bright Path 当前形态

源码位置：

```text
/Users/edy/plugins/bright-path
```

当前技能：

- `bright-path`：总入口，整理想法、计划、复盘、决策和总结。
- `ima-copilot`：连接本机 IMA Copilot MCP 服务，查询外部知识库。
- `sw-knowledge`：检索 `/Users/edy/Documents/SW` 本地知识库。
- `creator-workflow`：网络博主工作流总入口。
- `topic-selector`：从 SW 输入流、概念雷达、社媒收藏中筛选选题。
- `content-drafter`：把观点写成短视频、小红书、公众号、推文等草稿。
- `platform-rewriter`：将同一核心观点改写成不同平台版本。
- `creator-review`：复盘发布表现、评论反馈和后续选题。

当前参考文档：

- `plugin-lifecycle.md`：插件生命周期。
- `ima-copilot-setup.md`：IMA Copilot MCP 设置。
- `sw-knowledge-guide.md`：SW 本地知识库使用规则。
- `creator-workflow-guide.md`：创作者工作流。
- `platform-style-guide.md`：平台风格。
- `content-formats.md`：内容格式。
- `creator-review-metrics.md`：创作者复盘指标。

## 今日关键收获

### 1. 从“功能插件”转向“个人操作系统组件”

一开始只是想做一个简单插件；随着理解加深，Bright Path 已经变成一个个人知识工作流的雏形。

它不只是“帮我整理想法”，而是在连接：

```text
个人想法 -> 本地知识库 -> 外部知识库 -> 内容输出 -> 复盘沉淀
```

### 2. 工作流层比单个模型更重要

今天的一个重要判断是：模型能力会变化，但自己的工作流、资料结构、技能规范、沉淀方式会长期复利。

Bright Path 的价值不在于替代某个模型，而在于把反复出现的思考路径固化下来。

### 3. SW 知识库是插件的长期燃料

SW 本地知识库已经有：

- 输入流：日报、社媒收藏、概念雷达。
- 原子知识：概念、产品项目、论文技术。
- 主题地图：AI、Agent、RAG、AI 基础设施等。
- 综合输出：研究备忘录、周报、趋势判断。

Bright Path 接入 SW 后，插件不再只是空泛助手，而可以基于自己的真实资料输出。

### 4. 网络博主工作流是自然延展

基于 SW 里的 AI、Agent、MCP、知识管理、投资/项目研究资料，网络博主工作流可以成为一个高价值输出系统：

```text
资料输入 -> 选题判断 -> 内容结构 -> 多平台改写 -> 发布检查 -> 数据复盘 -> 选题沉淀
```

这条路径能把知识库从“收藏和研究”推进到“公开表达和反馈循环”。

## 后续规划

### v0.2：完善核心技能组

目标：让 Bright Path 的几个工作流更稳定。

建议补充：

- 为 `bright-path` 增加更明确的分流规则。
- 为 `sw-knowledge` 增加更多 SW 目录使用案例。
- 为 `creator-workflow` 增加一周内容规划模板。
- 修正 `plugin-lifecycle.md` 里当前技能列表，保持和实际 README 一致。

### v0.3：沉淀模板和案例

目标：让插件从“能用”变成“好用”。

建议新增：

```text
examples/
  idea-organizing-example.md
  sw-knowledge-example.md
  creator-topic-example.md
  creator-review-example.md
```

同时补充：

- 选题评分案例。
- 小红书/公众号/口播改写案例。
- 发布后复盘案例。
- SW 知识库检索到内容输出的完整链路案例。

### v0.4：加强 SW 回写流程

目标：让内容生产后的复盘能回到知识库。

建议设计：

```text
发布复盘 -> 可延展选题 -> 写入 10-输入流/概念雷达
高价值判断 -> 写入 20-原子知识
阶段性总结 -> 写入 40-综合输出/研究备忘录
```

先保持“用户确认后写入”，不要自动污染知识库。

### v0.5：完善 IMA Copilot MCP 接入

目标：让外部知识库和 SW 本地知识库形成互补。

建议：

- 明确 IMA 和 SW 的使用边界。
- IMA 用于外部知识库问答。
- SW 用于个人沉淀和本地资料检索。
- 需要时再做跨源整合：IMA 查外部资料，SW 查个人判断。

### v1.0：形成个人工作流插件产品

目标：Bright Path 成为可持续维护、可分享、可迁移的个人工作流插件。

v1.0 应具备：

- 清晰 README。
- 完整生命周期文档。
- 稳定技能组。
- 示例案例。
- 中文 manifest 可读。
- 无敏感 token/cookie。
- 可通过 marketplace 安装。
- 可通过 refresh 脚本维护。

## 维护习惯

每次改插件源码后运行：

```bash
/Users/edy/plugins/bright-path/scripts/refresh-local-plugin.sh
```

然后在 Codex app 中重新安装/刷新插件缓存。

维护原则：

- 不直接改 `~/.codex/plugins/cache/...`。
- 不把认证信息写进插件源码。
- `SKILL.md` 保持聚焦，不写成百科。
- `references` 放详细指南和模板。
- `README.md` 保持用户入口清晰。
- 每次结构变化更新 `CHANGELOG.md`。
- 重要理解沉淀回 SW。

## 对个人能力的启发

今天这个插件实践说明，真正值得沉淀的不是单次回答，而是反复出现的工作路径：

- 如何理解一个新技术。
- 如何拆解生命周期。
- 如何把外部工具接进自己的知识系统。
- 如何把知识库转化为内容生产。
- 如何把临时协作变成可复用插件。

这对应一个长期方向：

```text
从“会问 AI”升级到“会设计自己的 AI 工作流系统”。
```

## 下一步

1. 在 Codex app 里刷新/重装 Bright Path，让 cache 副本同步到最新源码。
2. 修正 Bright Path `plugin-lifecycle.md` 中技能列表过旧的问题。
3. 用 `creator-workflow` 从 SW 里跑一次真实选题筛选，验证网络博主工作流。
4. 把第一次真实输出和复盘沉淀为 `examples/creator-topic-example.md`。
5. 决定 Bright Path 是否需要进入 Git 管理，方便长期版本化。
