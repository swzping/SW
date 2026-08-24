# Agent-native 工具接口正在从代码扩展到创意工作流

标签：#agent #agent-native-tooling #creative-ai #design-agent #workflow #概念

## 核心内容

`Agent-native 工具接口` 的扩展方向，已经不再只限于代码编辑器、终端、知识库和浏览器。越来越多创意工具开始提供 Agent 更容易生成、检查、修改、回放和渲染的结构化工作介质，例如代码化视频、可编辑原型、带上下文的设计 agent，以及可蒸馏成 skill 的内容资料。

## 我的判断

这条线值得单独成立，因为它说明 Agent 的能力边界正在从“软件工程执行器”向“半结构化创意工作流执行器”外扩。短期内最先成熟的，不会是完全开放的创意生产，而是那些本来就具备结构化中间态、明确交付格式和可验证过程的场景，例如页面到代码、设计到原型、代码到视频 demo、内容资料到 skill / SOP。

真正值得跟踪的，不是“AI 会不会做设计或视频”，而是这些工具是否提供了 Agent 可持续工作的接口层：产物是否结构化、是否可 preview/diff/re-render、是否能带团队上下文和真实数据、是否能接进代码库或内容发布流程。如果这些条件持续成立，创意工具就会逐步从“给人用的生成器”变成“Agent 可协作环境”。

## 为什么它重要

- Agent 的应用边界会从 coding 扩展到设计、原型、视频 demo 和内容生产。
- 结构化中间态会成为创意工具能否被 Agent 稳定使用的关键，而不只是模型画得像不像。
- 这条变化把 `design-to-code`、`programmatic video`、`skill 资产化` 放进了同一条工程主线里。
- 对我自己的知识库判断而言，这说明 `Agent-native 工具接口` 应作为长期观察变量，而不是零散案例集合。

## 当前样本

- `HyperFrames`
  - 说明视频生成可以通过 HTML/CSS/JS 这类 Agent 更容易操作的结构化介质完成。
- `Figma Make / Figma agent`
  - 说明设计工作流开始支持循环生成、skills、上下文连接、真实数据和代码可见性。
- `v0 / AI app builder`
  - 说明从 prompt 到可编辑产物、代码和部署的闭环正在成熟。
- `cangjie-skill`
  - 说明外部内容可以被蒸馏为 Agent 可复用的方法资产，而不只是被阅读。

## 来源

- [[../../40-综合输出/研究备忘录/Agent-native 工具接口扩层观察]]
- [[../../10-输入流/原始资料/Figma Make 与 Figma Agent 官方资料]]
- [[../../20-原子知识/产品项目/HyperFrames 与 Agent-native 视频生成]]
- [[../../20-原子知识/产品项目/cangjie-skill 与视频蒸馏成 Agent Skills]]
- [Figma Make: AI app building is here in Figma](https://www.figma.com/solutions/ai-app-builder/)
- [Figma Blog: Got Skills? Make the Figma agent a better collaborator](https://www.figma.com/blog/got-skills-make-the-figma-agent-a-better-collaborator/)
- [Vercel: AI SDK 7 is now available](https://vercel.com/blog/ai-sdk-7)
- [HyperFrames Introduction](https://hyperframes.heygen.com/introduction)

## 相关主题

- [[../../30-主题地图/Agent]]
- [[../../30-主题地图/AI 垂直应用机会]]

## 下一步问题

- 哪类创意工具最先形成稳定的 Agent 接口标准：设计、视频、演示，还是内容生产？
- 我是否需要单独建立 `AI 创意工具` 或 `Agent-native 创意工作流` 主题地图？
- 对我当前最有实践价值的切入口，是设计到原型、代码到 demo 视频，还是内容资料到 skill？
