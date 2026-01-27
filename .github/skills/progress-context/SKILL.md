---
name: progress-context
description: Reads PROGRESS.md to understand recent changes and context. Use at session start or when resuming work to avoid redundant effort.
---

# Progress Context Skill

Provides background context from recent work sessions to improve continuity and avoid redundant work.

## When to Use

- **Session start**: Read recent entries to understand current state
- **Resuming work**: Check what was done previously on a topic
- **Before making changes**: Verify the change wasn't already made

## PROGRESS.md Structure

Entries are organized by date (newest first) with topic headers for efficient searching:

```markdown
## YYYY-MM-DD

### Scripts
- Changes to automation scripts

### Content
- New posts, book entries, weekly updates

### Conventions
- New patterns, naming rules, structure changes

### Docs
- README updates, CLAUDE.md changes, skill additions
```

## How to Read Efficiently

1. **Quick scan**: Read today's and yesterday's entries first
2. **Topic search**: Use `Grep` to find entries by topic header (e.g., `### Scripts`)
3. **Keyword search**: Search for specific files or features mentioned

Example searches:
```bash
# Find all script-related changes
grep -A 5 "### Scripts" PROGRESS.md

# Find mentions of a specific file
grep "new-week.sh" PROGRESS.md
```

## Updating PROGRESS.md

At the end of each session, add an entry summarizing changes:

1. Add new date header if needed (newest at top)
2. Group changes under appropriate topic headers
3. Keep entries concise (bullet points only)
4. Include file names for easy reference

## Topic Headers Reference

| Header | Use for |
|--------|---------|
| `### Scripts` | Automation, shell scripts, new-week.sh |
| `### Content` | Weekly entries, posts, book notes |
| `### Conventions` | Naming patterns, structure rules, templates |
| `### Docs` | README, CLAUDE.md, skills, instructions |
| `### Fixes` | Bug fixes, corrections, renames |
| `### Blockers` | Problems encountered, failed approaches, solutions found |
