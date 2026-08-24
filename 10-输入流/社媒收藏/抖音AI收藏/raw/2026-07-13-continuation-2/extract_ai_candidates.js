const fs = require("fs");
const path = require("path");

const dir = __dirname;
const inputs = [
  path.join(dir, "new-after-old-025-039.ocr.tsv"),
  path.join(dir, "new-after-old-040.ocr.tsv"),
];
const outPath = path.join(
  path.dirname(path.dirname(dir)),
  "2026-07-13-抖音AI收藏续采去重后约100条证据表.md"
);

const keywords = [
  /ai/i,
  /codex/i,
  /claude/i,
  /agent/i,
  /skill/i,
  /gemini/i,
  /mcp/i,
  /openclaw/i,
  /openai/i,
  /prompt/i,
  /context/i,
  /大模型/,
  /智能体/,
  /写代码/,
  /编程/,
  /国产模型/,
  /插件/,
  /提示词/,
  /上下文/,
  /自动化/,
  /RPA/i,
  /Ollama/i,
  /DeepSeek/i,
  /短剧/,
  /漫剧/,
  /本地AI/,
  /知识/,
];

const noise = [
  /douyin\.com/,
  /抖音精选/,
  /收藏夹/,
  /观看历史/,
  /稍后再看/,
  /我的预约/,
  /搜索你/,
  /批量管理/,
  /关注65/,
  /下载抖音/,
  /Chrome/,
  /所有书签/,
  /通知/,
  /消息/,
  /投稿/,
  /^AI 搜索$/,
  /^作品/,
  /^视频$/,
  /^音乐$/,
  /^合集$/,
  /^短剧$/,
  /^[Vv]?\s*\d+(\.\d+)?万?$/,
];

function norm(s) {
  return s
    .replace(/[^\p{L}\p{N}]+/gu, "")
    .toLowerCase()
    .slice(0, 60);
}

function category(text) {
  if (/codex|claude|agent|skill|mcp|openclaw|context|prompt|写代码|编程|智能体|上下文/i.test(text)) {
    return "Coding Agent / 工程化";
  }
  if (/短剧|漫剧|视频|音视频|RPA|自动化/i.test(text)) {
    return "内容生产 / 自动化";
  }
  if (/大模型|国产模型|本地AI|Ollama|DeepSeek|Gemini/i.test(text)) {
    return "模型 / 本地化";
  }
  return "AI 线索";
}

const rows = [];
for (const input of inputs) {
  if (!fs.existsSync(input)) continue;
  const lines = fs.readFileSync(input, "utf8").split(/\r?\n/).filter(Boolean);
  for (const line of lines) {
    const cols = line.split("\t");
    if (cols.length < 7) continue;
    const image = path.basename(cols[0], path.extname(cols[0]));
    const x = Number(cols[1]);
    const y = Number(cols[2]);
    const confidence = Number(cols[5]);
    const text = cols.slice(6).join("\t").trim();
    if (!text || text.length < 4) continue;
    if (y > 0.64 || x < 0.10) continue;
    if (!keywords.some((rx) => rx.test(text))) continue;
    if (noise.some((rx) => rx.test(text))) continue;
    rows.push({ image, x, y, confidence, text, key: norm(text) });
  }
}

const seen = new Set();
const unique = rows
  .sort((a, b) => a.image.localeCompare(b.image) || b.y - a.y || a.x - b.x)
  .filter((row) => {
    if (seen.has(row.key)) return false;
    seen.add(row.key);
    return true;
  });

const lines = [];
lines.push("# 2026-07-13 抖音 AI 收藏续采去重后约 100 条证据表");
lines.push("");
lines.push("采集来源：抖音网页版个人页 `收藏 > 视频`");
lines.push("采集日期：2026-07-13");
lines.push("采集说明：已先回看旧证据表与旧 `page-18` 断点；本表只整理越过旧断点后的新截图 OCR 线索。链接仍以 `待补链接` 标注，后续点开单条卡片再补。");
lines.push("");
lines.push("## 本轮口径");
lines.push("");
lines.push("- 旧断点复核：旧 `page-18` 包含 `比较好的简历 / 汶川 / 心经的空` 等非 AI 线索；本轮已越过该区域。");
lines.push("- 新证据截图：`raw/2026-07-13-continuation-2/new-after-old-025.jpeg` 至 `new-after-old-040.jpeg`。");
lines.push("- 覆盖量：16 屏截图，按每屏约 8-12 个可见卡片估算，覆盖约 100 条以上可见收藏卡片。");
lines.push("- 日期状态：截图中未看到抖音展示“收藏日期/最后一条收藏日期”，只能看到系统菜单栏日期，不能当作收藏日期。");
lines.push("");
lines.push("## AI 相关 OCR 候选");
lines.push("");
lines.push("| # | 分类 | OCR线索 | 链接 | 来源截图 | 备注 |");
lines.push("|---|---|---|---|---|---|");
unique.forEach((row, i) => {
  const text = row.text.replace(/\|/g, "｜");
  lines.push(`| ${i + 1} | ${category(text)} | ${text} | 待补链接 | ${row.image} | OCR候选，标题待复核 |`);
});
lines.push("");
lines.push("## 下一步优先补链");
lines.push("");
lines.push("优先从 `OpenClaw`、`Claude/Claude Code`、`Codex/Skill`、`Context Engineering`、`AI 写代码/一人公司`、`本地 AI / Ollama / DeepSeek` 这些簇开始补链接。");

fs.writeFileSync(outPath, lines.join("\n"), "utf8");
console.log(JSON.stringify({ outPath, candidates: unique.length }, null, 2));
