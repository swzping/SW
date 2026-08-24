# 抖音 AI 收藏 Skill 链接与安装清单

状态：#Skill #项目链接 #安装清单 #待补链接

说明：本文件整理自已采集的抖音 AI 收藏与后续核验结果。已确认项目给出官方/GitHub 链接、安装方式和建议用法；仍只有 OCR/标题线索的条目标记为 `待补链接`。

## 推荐先试的 5 个

| 优先级 | 项目 / Skill | 为什么先试 |
|---|---|---|
| 1 | cangjie-skill | 和“把视频/收藏蒸馏成可复用 Skill”高度贴合 |
| 2 | agency-agents | 收集大量 AI 员工/专家角色，适合学习角色写法 |
| 3 | Firecrawl | 用于网页抓取、链接核验、资料转 Markdown |
| 4 | Midscene | 用自然语言做 UI 自动化和测试，适合前端/网页验收 |
| 5 | OpenClaw Agent Skills | 研究 Skill 生态、目录结构和安全边界 |

## 1. 视频/资料蒸馏成 Skill：cangjie-skill

链接：

- GitHub: <https://github.com/kangarooking/cangjie-skill>
- 抖音收藏原链接：<https://www.douyin.com/video/7659323081614592227>

用途：

- 把书、长视频、播客、访谈、课程、长文里的方法论，蒸馏成可调用的 AI Skills。
- 对你当前的“抖音 AI 收藏 -> 知识库 -> 自用 Skill”流程非常贴合。

安装/获取：

```bash
git clone https://github.com/kangarooking/cangjie-skill.git
cd cangjie-skill
```

建议用法：

```text
请参考 cangjie-skill 的方法，把这条抖音 AI 收藏蒸馏成一个可复用 Skill：
输入：标题、OCR、视频链接、字幕/文案
输出：SKILL.md、适用场景、触发条件、执行步骤、边界、测试问题
```

最适合你的自用版：

```text
抖音AI收藏 -> 视频/文案 -> 方法论抽取 -> 自用Skill
```

## 2. 大量 AI 员工/角色库：agency-agents

链接：

- GitHub: <https://github.com/msitarzewski/agency-agents>
- 官网/安装器：<https://agencyagents.app>

用途：

- 收集大量专家型 AI agent / AI 员工角色。
- 适合学习如何写角色：定位、人格、流程、交付物、边界、验收标准。

安装到 Codex：

```bash
git clone https://github.com/msitarzewski/agency-agents.git
cd agency-agents
./scripts/convert.sh --tool codex
./scripts/install.sh --tool codex
```

安装到 Claude Code：

```bash
./scripts/install.sh --tool claude-code
```

使用示例：

```text
Use the Frontend Developer agent to review this component.
```

中文用法：

```text
请调用 Frontend Developer 角色，帮我检查这个前端组件的结构、交互和可维护性。
```

学习重点：

- 不要只看“232 个 AI 员工”的数量。
- 真正值得学的是每个角色如何定义职责、流程、输出格式和边界。

## 3. OpenClaw Skill 生态

链接：

- OpenClaw GitHub: <https://github.com/openclaw/openclaw>
- OpenClaw Agent Skills: <https://github.com/openclaw/agent-skills>
- OpenClaw Skills 文档：<https://docs.openclaw.ai/tools/skills>
- OpenClaw Skills 合集：<https://github.com/VoltAgent/awesome-openclaw-skills>

用途：

- 研究 Skill 如何被加载、安装、管理和安全审查。
- 适合参考别人如何组织 Skill 生态。

安装 OpenClaw：

```bash
# 需要 Node 24，或 Node 22.19+
openclaw onboard --install-daemon
openclaw gateway status
```

源码开发：

```bash
git clone https://github.com/openclaw/openclaw.git
cd openclaw
pnpm install
pnpm openclaw setup
pnpm gateway:watch
```

安装 OpenClaw 官方 agent-skills：

```bash
git clone https://github.com/openclaw/agent-skills.git
cd agent-skills

# 查看有哪些 skill
scripts/install-skills --list

# 预览安装
scripts/install-skills --dry-run

# 安装全部
scripts/install-skills

# 只安装指定 skill
scripts/install-skills autoreview crabbox

# 安装到 Codex skills 目录
scripts/install-skills --target ~/.codex/skills autoreview
```

OpenClaw Skill 常见安装方式：

```bash
openclaw skills install @owner/<slug>
openclaw skills install git:owner/repo@ref
openclaw skills install ./path/to/skill --as my-tool
openclaw skills install @owner/<slug> --global
openclaw skills update --all
```

安全提醒：

- 第三方 Skill 要当作不可信代码。
- 安装前先读 `SKILL.md`、脚本、权限、外部调用和密钥要求。

## 4. Skill 大合集：awesome-openclaw-skills

链接：

- GitHub: <https://github.com/VoltAgent/awesome-openclaw-skills>

用途：

- 收集并分类 OpenClaw Skills。
- 适合找灵感：Git/GitHub、Coding Agents、Browser Automation、Frontend、Image/Video、PDF/Documents、Notes/PKM 等。

安装方式：

```bash
openclaw skills install <skill-slug>
```

或者：

```bash
npx clawhub install <skill-slug>
```

手动安装目录：

```text
~/.openclaw/skills/
```

项目内安装目录：

```text
<project>/skills/
```

建议：

- 每个分类只挑 1 个试用。
- 不要一次装几十个 Skill。

## 5. 网页抓取 / 资料核验 Skill：Firecrawl

链接：

- GitHub: <https://github.com/mendableai/firecrawl>
- 官网：<https://firecrawl.dev>

用途：

- 搜索、抓取网页，把网页转成 Markdown、结构化 JSON、截图等。
- 适合做资料核验、GitHub/官网补链接、RAG 输入。

安装 Firecrawl Skill：

```bash
npx -y firecrawl-cli@latest init --all --browser
```

MCP 配置示例：

```json
{
  "mcpServers": {
    "firecrawl-mcp": {
      "command": "npx",
      "args": ["-y", "firecrawl-mcp"],
      "env": {
        "FIRECRAWL_API_KEY": "fc-YOUR_API_KEY"
      }
    }
  }
}
```

CLI 使用示例：

```bash
firecrawl search "OpenClaw Skills" --limit 5
firecrawl scrape https://docs.openclaw.ai/tools/skills
```

Agent 使用示例：

```text
请用 Firecrawl 抓取这个项目的 README，总结安装方式、使用场景、风险点。
```

## 6. UI 自动化 / 测试 Skill：Midscene

链接：

- GitHub: <https://github.com/web-infra-dev/midscene>
- 官网：<https://midscenejs.com/>
- Chrome 扩展快速体验：<https://midscenejs.com/quick-experience>

用途：

- 用自然语言做 UI testing / automation。
- 支持 Web、Android、iOS、桌面等界面的视觉驱动自动化。

最简单试用：

1. 安装 Midscene Chrome 扩展。
2. 打开扩展侧边栏。
3. 配置模型环境变量。
4. 使用 Act / Query / Assert / Tap。

环境变量示例：

```bash
export MIDSCENE_MODEL_BASE_URL="https://replace-with-your-model-service-url/v1"
export MIDSCENE_MODEL_API_KEY="replace-with-your-api-key"
export MIDSCENE_MODEL_NAME="replace-with-your-model-name"
export MIDSCENE_MODEL_FAMILY="replace-with-your-model-family"
```

使用示例：

```text
Act：打开搜索框，输入 Midscene，运行搜索并打开第一个结果。
Query：从页面提取用户 ID，返回 { id: string }。
Assert：判断页面上是否有登录按钮和用户协议链接。
Tap：点击登录按钮。
```

## 7. 自动出片 / 内容生产：MoneyPrinterTurbo

链接：

- GitHub: <https://github.com/harry0703/MoneyPrinterTurbo>

用途：

- 用 AI 大模型一键生成短视频。
- 适合作为内容生产流水线样本，而不是直接当“全自动赚钱机”。

Docker 部署：

```bash
git clone https://github.com/harry0703/MoneyPrinterTurbo.git
cd MoneyPrinterTurbo
docker compose -f docker-compose.release.yml up
```

访问：

```text
WebUI: http://127.0.0.1:8501
API Docs: http://127.0.0.1:8080/docs
```

手动部署：

```bash
git clone https://github.com/harry0703/MoneyPrinterTurbo.git
cd MoneyPrinterTurbo

uv python install 3.11
uv sync --frozen
```

不用 uv：

```bash
python3.11 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

建议研究链路：

```text
选题 -> 文案 -> 素材 -> 字幕 -> BGM -> 短视频 -> 人工复核
```

## 8. AI 投研多智能体：TradingAgents

链接：

- GitHub: <https://github.com/TauricResearch/TradingAgents>
- 论文：<https://arxiv.org/pdf/2412.20138>

用途：

- 多智能体 LLM 金融交易/投研框架。
- 适合研究多角色投研结构，但必须做回测和纸面验证。

安装：

```bash
git clone https://github.com/TauricResearch/TradingAgents.git
cd TradingAgents

conda create -n tradingagents python=3.12
conda activate tradingagents

pip install .
```

启动 CLI：

```bash
tradingagents
```

源码方式：

```bash
python -m cli.main
```

建议用法：

```text
请用 TradingAgents 思路，为 600519 做一次多角色纸面投研：
- 基本面分析员
- 新闻分析员
- 技术分析员
- 风险审查员
输出每条结论的数据来源和待验证点。
```

注意：

- 不直接用于实盘。
- 所有结论必须有数据来源、回测或次日验证。

## 9. 模型路由 / 免费额度聚合：FreeLLMAPI

链接：

- GitHub: <https://github.com/tashfeenahmed/freellmapi>

用途：

- OpenAI-compatible proxy。
- 把多个 LLM provider 的免费额度/自定义 endpoint 聚合到一个 `/v1` 端点后面。
- 重点是 routing、failover、encrypted keys、成本控制。

一键安装：

```bash
curl -fsSL https://freellmapi.co/install.sh | bash
```

安全提醒：

- `curl | bash` 风险较高，建议先打开脚本审查再执行。
- 仓库定位偏 personal experimentation，不应直接当企业级网关。

手动 Docker Compose：

```bash
git clone https://github.com/tashfeenahmed/freellmapi.git
cd freellmapi

ENCRYPTION_KEY="$(openssl rand -hex 32)"
printf "ENCRYPTION_KEY=%s\nPORT=3001\n" "$ENCRYPTION_KEY" > .env

docker compose up -d
```

打开：

```text
http://localhost:3001
```

本地开发：

```bash
git clone https://github.com/tashfeenahmed/freellmapi.git
cd freellmapi
npm install
ENCRYPTION_KEY="$(node -e 'console.log(require("crypto").randomBytes(32).toString("hex"))')"
printf "ENCRYPTION_KEY=%s\nPORT=3001\n" "$ENCRYPTION_KEY" > .env
npm run dev
```

## 10. 建议安装顺序

### 第一批：最贴合当前资料整理

```bash
git clone https://github.com/kangarooking/cangjie-skill.git
```

```bash
git clone https://github.com/msitarzewski/agency-agents.git
cd agency-agents
./scripts/convert.sh --tool codex
./scripts/install.sh --tool codex
```

```bash
npx -y firecrawl-cli@latest init --all --browser
```

### 第二批：工程化和测试

- Midscene Chrome 扩展：<https://midscenejs.com/quick-experience>
- OpenClaw：<https://github.com/openclaw/openclaw>
- OpenClaw Agent Skills：<https://github.com/openclaw/agent-skills>

### 第三批：垂直应用实验

- MoneyPrinterTurbo：内容生产实验。
- TradingAgents：投研多智能体实验。
- FreeLLMAPI：模型路由/成本控制实验。

## 11. 仍待补链接的 Skill 线索

这些在采集中出现过，但目前还需要点开抖音视频补原链接或项目名：

| 线索 | 状态 | 建议优先级 |
|---|---|---|
| FFmpeg Skill | 待补链接 | 高 |
| Manim Skill | 待补链接 | 高 |
| Codex + Obsidian 自生长知识库 | 待补链接 | 最高 |
| Codex Handoff | 待补链接 | 高 |
| Claude Code 必装开源工具 | 待补链接 | 高 |
| Codex 自媒体平台自动发布 | 待补链接 | 中高 |
| Team Agent：飞书多维表 + 智能体 | 待补链接 | 中高 |
| 前端工程化四层锁 | 待补链接 | 高 |
| document-skills | 待补链接 | 中 |
| Planning Skill MCP 上下文 | 待补链接 | 高 |
| skillsmp.com/zh | 待补链接 | 中 |
| fndskills | 待补链接 | 中 |

## 12. 自用 Skill 制作优先级

最建议优先做自己的 5 个 Skill：

1. `抖音AI收藏整理Skill`
2. `视频/网页证据核验摘要Skill`
3. `资料升级为原子知识Skill`
4. `Codex + Obsidian 自生长知识库Skill`
5. `FFmpeg / Manim 内容生产Skill`

判断标准：

- 能不能减少重复劳动。
- 能不能留下证据链。
- 能不能被复用。
- 能不能被测试。
- 能不能安全地限制权限和外部调用。
