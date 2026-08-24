# 自媒体 Agent Skills 调研索引

最近更新：2026-07-07

用途：跟踪“自媒体 / 内容生产 / 社媒运营”相关的 agent skills，判断哪些值得安装试用，哪些只适合观察，哪些因为涉及账号登录、发布、互动而需要谨慎。

## 核心判断

自媒体相关 skill 不应该只按平台名整理。更实用的方式是按工作流分层：

```text
选题与定位 -> 资料与趋势研究 -> 文案/脚本 -> 视觉/视频 -> 发布与互动 -> 数据复盘
```

目前公开 skills 里更成熟的是：

- 内容策略、文案、SEO、社媒内容生成。
- YouTube/小红书/抖音/Instagram/X 等平台的资料抓取、发布或自动化。
- 视频生成类 skill，例如 HyperFrames。

需要谨慎的是：平台自动化 skill 往往涉及登录态、cookie、扫码、发布、评论、点赞、收藏等账号操作，不能直接安装后放任执行。

## 优先级结论

第一优先学习：

- `content-strategy`
- `copywriting`
- `social-content` / `social-media`
- `youtube-transcript` / `youtube-seo`
- `xiaohongshu` 的研究与趋势分析部分

第二优先观察：

- `HyperFrames` / video workflow skills
- `newsletter-generation`
- `linkedin-posts`
- `instagram-research`

谨慎处理：

- 小红书、抖音、Instagram、Twitter/X 的自动发布、评论、点赞、收藏、下载类 skill。

## 按工作流分类

| 工作流 | 代表 skill | 代表来源 | 作用 | 跟踪优先级 | 风险判断 |
| --- | --- | --- | --- | --- | --- |
| 内容策略 | `content-strategy` | `coreyhaines31/marketingskills` | 内容方向、选题簇、内容日历、内容路线图。 | A | 安全，适合先学方法。 |
| 文案写作 | `copywriting` | `coreyhaines31/marketingskills` | 落地页、标题、CTA、广告、产品文案。 | A | 安全，适合作为写作框架。 |
| 社媒内容 | `social-media` / `social-content` | `langchain-ai/deepagents`、`coreyhaines31/marketingskills` | 平台化社媒内容生成，适配 LinkedIn、X、Instagram。 | A- | 注意平台语气不要模板化。 |
| 小红书 | `xiaohongshu`、`write-xiaohongshu`、`xiaohongshu-note-analyzer` | `zhjiang22/openclaw-xhs`、`adjfks/corner-skills`、`softbread/xiaohongshu-doctor` | 搜索笔记、获取帖子详情、分析话题、生成笔记、部分支持发布互动。 | A- | 涉及登录态和账号操作，安装前必须审查。 |
| 抖音 | `douyin`、`douyin-video`、`douyin-video-summary`、`douyin-viral-content` | `xiaoyiv/douyin-skill`、`yzfly/douyin-mcp-server`、`liu-wei-ai/douyin-video-summary` | 视频抓取、摘要、爆款脚本、平台自动化。 | B+ | 重点只观察脚本/摘要能力，慎用下载和账号操作。 |
| YouTube | `youtube-transcript`、`youtube-downloader`、`youtube-clipper`、`youtube-seo` | `jimliu/baoyu-skills`、`composiohq/awesome-claude-skills`、`kostja94/marketing-skills` | 提取字幕、剪辑、SEO、素材研究。 | A- | 字幕和 SEO 安全；下载/剪辑需注意版权。 |
| 视频生成 | `general-video`、`website-to-video`、`product-launch-video` | `heygen-com/hyperframes` | 结构化生成短视频、产品视频、网站转视频。 | A- | 值得跟踪，但不是传统社媒 skill。 |
| Newsletter | `newsletter-generation`、`newsletter`、`newsletter-publishing` | `bytedance/deer-flow`、`openclaudia/openclaudia-skills` | 把资料整理为 newsletter 或发布流程。 | B+ | 适合做周报/趋势输出。 |
| LinkedIn/X | `linkedin-posts`、`linkedin-ghostwriting`、`twitter-x-posts`、`twitter-reader` | `kostja94/marketing-skills`、`samber/cc-skills`、`daymade/claude-code-skills` | 专业社媒写作、阅读、自动化。 | B+ | 适合海外个人品牌，但要防止口吻同质化。 |
| Instagram | `instagram-research`、`instagram-content-generation`、`instagram-account-research` | `bradautomates/head-of-content`、`eachlabs/skills`、`postplusai/postplus-skills` | 账号研究、内容生成、创作者发现。 | B | 研究价值大于直接自动化。 |

## 代表项目

### 内容策略与文案

代表 skill：

- `coreyhaines31/marketingskills@content-strategy`
- `coreyhaines31/marketingskills@copywriting`
- `coreyhaines31/marketingskills@social-content`
- `kostja94/marketing-skills@content-strategy`
- `kostja94/marketing-skills@copywriting`

适合我学习：

- 怎么从受众、业务、渠道目标出发做内容规划。
- 怎么把“想发什么”拆成选题簇、内容支柱、发布节奏。
- 怎么把泛泛表达改成具体、可转化、符合渠道语境的内容。

### 小红书方向

代表 skill：

- `zhjiang22/openclaw-xhs@xiaohongshu`
- `adjfks/corner-skills@write-xiaohongshu`
- `softbread/xiaohongshu-doctor@xiaohongshu-note-analyzer`
- `autoclaw-cc/xiaohongshu-mcp-skills@xiaohongshu`
- `iamzifei/xiaohongshu-images-skill@xiaohongshu-images`
- `freestylefly/xiaohongshu-skills@xiaohongshu-cover-generator`

可用部分：

- 关键词搜索。
- 热点话题跟踪。
- 笔记结构分析。
- 封面/长图/图文笔记生成。

谨慎部分：

- 登录态、cookie、扫码。
- 发布笔记。
- 评论、回复、点赞、收藏。

### 抖音方向

代表 skill：

- `xiaoyiv/douyin-skill@douyin`
- `yzfly/douyin-mcp-server@douyin-video`
- `liu-wei-ai/douyin-video-summary@douyin-video-summary`
- `vickyhan924/self-media-script@douyin-viral-content`

更值得关注的是：

- 视频摘要。
- 爆款脚本结构。
- 选题/标题/开头钩子。

不建议优先做：

- 批量下载。
- 账号自动化互动。

### YouTube / 海外内容方向

代表 skill：

- `jimliu/baoyu-skills@baoyu-youtube-transcript`
- `intellectronica/agent-skills@youtube-transcript`
- `kostja94/marketing-skills@youtube-seo`
- `op7418/youtube-clipper-skill@youtube-clipper`

适合用途：

- 把视频转成可检索资料。
- 从长视频里提炼选题、观点和脚本。
- 做海外内容 SEO 与标题优化。

### 视频生成方向

代表 skill：

- `heygen-com/hyperframes@general-video`
- `heygen-com/hyperframes@website-to-video`
- `heygen-com/hyperframes@product-launch-video`
- `heygen-com/hyperframes@pr-to-video`

对我的启发：

- 自媒体 skill 不只是“写文案”，也会扩展到视频结构、分镜、音频、字幕、渲染检查。
- 对前端开发者来说，`website-to-video` 和 `product-launch-video` 可能比纯娱乐短视频更实用。

## 对我当前知识库的建议

1. 不要把每个自媒体平台 skill 都拆成原子知识，先保留在本索引。
2. 如果要安装，优先安装纯工作流型 skill：`content-strategy`、`copywriting`、`youtube-transcript`。
3. 平台自动化 skill 必须先检查 `SKILL.md`、脚本、依赖、权限、网络请求和账号操作范围。
4. 如果未来要做自己的 skill，建议叫 `self-media-workflow`，不要一开始就做“自动发布”。第一版只做：选题、资料整理、脚本、标题、封面建议、复盘表。

## 可试用顺序

1. 内容策略：先用 `content-strategy` 规划一个 7 天选题表。
2. 文案脚本：用 `copywriting` 或平台脚本 skill 写 3 个版本。
3. 视频/图文：用 HyperFrames 或小红书图文 skill 生成结构化草稿。
4. 人工发布：先不自动发布。
5. 数据复盘：把阅读、点赞、收藏、评论、转化写回知识库。

## 参考来源

- Skills 搜索：`npx skills find content creator`
- Skills 搜索：`npx skills find social media`
- Skills 搜索：`npx skills find copywriting`
- Skills 搜索：`npx skills find video`
- Skills 搜索：`npx skills find xiaohongshu`
- Skills 搜索：`npx skills find douyin`
- Skills 搜索：`npx skills find youtube`
- content-strategy：<https://skills.sh/coreyhaines31/marketingskills/content-strategy>
- copywriting：<https://skills.sh/coreyhaines31/marketingskills/copywriting>
- xiaohongshu：<https://skills.sh/zhjiang22/openclaw-xhs/xiaohongshu>
- HyperFrames general-video：<https://skills.sh/heygen-com/hyperframes/general-video>
- LangChain social-media：<https://skills.sh/langchain-ai/deepagents/social-media>
- newsletter-generation：<https://skills.sh/bytedance/deer-flow/newsletter-generation>
- YouTube transcript：<https://skills.sh/jimliu/baoyu-skills/baoyu-youtube-transcript>
- Douyin viral content：<https://skills.sh/vickyhan924/self-media-script/douyin-viral-content>
