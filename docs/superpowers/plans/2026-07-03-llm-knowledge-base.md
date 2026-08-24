# LLM Knowledge Base Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build the initial Markdown knowledge base structure for AI/LLM industry intelligence.

**Architecture:** Create a five-layer folder structure: inputs, atomic knowledge, topic maps, synthesized outputs, and system governance. Seed the system with entry pages, rules, templates, initial topic maps, and a future enhancement roadmap.

**Tech Stack:** Markdown, Obsidian wiki links, local filesystem.

---

### Task 1: Create Folder Structure

**Files:**
- Create directories under `/Users/edy/Documents/SW`.

- [x] **Step 1: Create directories**

Run:

```bash
mkdir -p "00-入口" "10-输入流/日报" "10-输入流/原始资料" "20-原子知识/概念" "20-原子知识/人物组织" "20-原子知识/产品项目" "20-原子知识/论文技术" "30-主题地图" "40-综合输出/周报" "40-综合输出/趋势判断" "40-综合输出/研究备忘录" "90-系统/模板" "90-系统/规则" "docs/superpowers/specs" "docs/superpowers/plans"
```

Expected: directories exist.

### Task 2: Move Existing Daily Report

**Files:**
- Move: `/Users/edy/Documents/SW/AI热词日报-2026-07-01.md`
- To: `/Users/edy/Documents/SW/10-输入流/日报/AI热词日报-2026-07-01.md`

- [x] **Step 1: Move report**

Run:

```bash
mv "AI热词日报-2026-07-01.md" "10-输入流/日报/AI热词日报-2026-07-01.md"
```

Expected: report exists in the daily input stream.

### Task 3: Create Core Markdown Files

**Files:**
- Create entry pages, rules, tag system, templates, topic maps, spec, and enhancement roadmap.

- [x] **Step 1: Write Markdown files**

Use `apply_patch` to create the files listed in the spec.

Expected: every file listed in `docs/superpowers/specs/2026-07-03-llm-knowledge-base-design.md` exists.

### Task 4: Verify Structure

**Files:**
- Read filesystem only.

- [x] **Step 1: List knowledge base files**

Run:

```bash
find /Users/edy/Documents/SW -maxdepth 4 -type f | sort
```

Expected: output includes `00-入口/README.md`, `90-系统/后续增强路线图.md`, and `10-输入流/日报/AI热词日报-2026-07-01.md`.

- [x] **Step 2: Check for unresolved placeholders**

Run:

```bash
rg -g '!docs/superpowers/plans/**' "T""BD|TO""DO|待定" /Users/edy/Documents/SW
```

Expected: no matches in the generated knowledge base files.
