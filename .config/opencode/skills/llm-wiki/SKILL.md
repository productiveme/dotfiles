---
name: LLM Wiki
description: Use when working on a productive.me studio project, especially on code, stack, architecture, delivery, or commercial decisions. Reads settled facts from the sibling ../wiki, applies them, and flags contradictions — asking whether to record a known deviation in the project AGENTS.md or update the wiki.
---

# LLM Wiki

The canonical procedure for this skill lives in the studio wiki:

- from a project root: `../wiki/skills/llm-wiki.md`
- fallback: `/Users/jaco/Projects/wiki/skills/llm-wiki.md`

Read that file now and follow it. The wiki version is the source of truth. Do not duplicate
or edit it here.

If the wiki cannot be read, say so, use the project's `AGENTS.md` alone, and do not invent
house facts.

The short version, in case you need the shape before opening the file: read the project
`AGENTS.md`, then the wiki index and only the relevant pages; treat `stable` pages and
active decisions as settled and `draft`, `open`, `monitoring`, and `provisional` as not
settled; on a conflict, pause, name both sides, and ask whether it is a known deviation in
the project `AGENTS.md`, an update to the wiki, or an escalation. Never commit or push
without approval.
