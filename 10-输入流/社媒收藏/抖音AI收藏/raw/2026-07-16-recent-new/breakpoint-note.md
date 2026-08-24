# 2026-07-16 断点说明

- 采集位置：抖音网页版个人页 `收藏 > 视频` 顶部最新收藏区。
- 采集方式：macOS Accessibility `AXLink` + 区域截图 + Vision OCR。
- 实际采集：`1` 屏；窗口区域截图 `screen-01.png`，对应 OCR `ocr-01.tsv`，链接文本 `accessibility-links.tsv`。
- 断点命中：`已命中昨日断点`。首屏顶部先出现 `5` 条未在 `2026-07-15` 证据中记录的新 AI 相关条目，随后连续出现昨日已见链接：
  - `https://www.douyin.com/video/7662288876249060709`
  - `https://www.douyin.com/video/7662370288369722984`
  - `https://www.douyin.com/video/7660918456908401954`
  - `https://www.douyin.com/video/7662280979087679077`
  - `https://www.douyin.com/video/7662251858534157620`
  - `https://www.douyin.com/video/7661597461782298074`
  - `https://www.douyin.com/video/7654887463021825316`
- 停止原因：顶部新条目之后已连续看到昨日已见条目，无需继续下滚。
- 收藏时间 / 发布时间：`未看到`。可访问性文本、截图与 OCR 中均未见 `收藏时间`、`发布时间`、`发布于` 等可验证字段。
