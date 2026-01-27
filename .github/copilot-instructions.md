
# Learn In Public — AI Agent Coding Guide

## Purpose
Enable AI agents to maintain and extend a weekly learning journal with minimal friction and high reliability. Focus on automating weekly entry creation, content validation, and navigation updates.

## Project Architecture & Key Workflows

- **Main README.md**: Central navigation table. Always update the weekly table and "Weeks Documented" count when adding a new week.
- **scripts/new-week.sh**: Automates new week setup. Creates `weeks/YYYY/week-XX/` folders and prefills from `TEMPLATE.md`. Uses **sequential week numbering** (week-01, week-02, week-03...) based on existing folders, not ISO week numbers.
- **scripts/check-urls.sh**: Validates all markdown links (internal/external). Run after adding or editing content. Logs to `logs/url-checks/` and updates `UNRESOLVED.md`.
- **weeks/YYYY/week-XX/README.md**: Navigation hub for the week. Only include bullet summaries and links to detailed posts. Never add full content here.
- **weeks/YYYY/week-XX/post-name.md**: Detailed learning posts. Use kebab-case filenames. Always include `[← Back to Week XX](README.md)` at the bottom.
- **.github/skills/**: Modular Agent Skills (e.g., url checking, content summarization, screenshot reference, PDF reading). Each skill has a `SKILL.md` with usage, requirements, and best practices.


## Content & Structure Conventions

- **Topic categories** (always in this order):
    - 💻 AI, Data & Programming
    - 💰 Finance & Money
    - ✈️ Travel & Culture
    - 🌱 Personal Development
    - 💪 Health & Fitness
    - ❤️ Relationships, Life & Family

- **Weekly README.md**:
    - For each post or key point, place it under the correct topic heading (see categories above)
    - Only include topic headings that have content for that week (omit empty sections)
    - Bullet points only, no explanations under headings
    - Link to posts with `📝 [Title](post-name.md)`
    - At the bottom, always include navigation links:
        `[← Previous Week](../week-XX/README.md) | [Main README](../../../README.md) | [Next Week →](../week-XX/README.md)`

- **Posts**: ELI5 explanations, tables, comparisons. Always end with a back-link to the week hub: `[← Back to Week XX](README.md)`
- **Filenames**: Use kebab-case for posts. Use prefixes for content types:
    - `book-` for book reviews/notes (e.g., `book-superforecasting.md`)
    - Never overwrite or remove existing links/content.
- **Book posts**: Include a "Why This Book?" section that is concise and catchy (2-3 punchy sentences max). Make readers want to pick up the book.
- **Empty sections**: Omit or skip in weekly files—do not add placeholders.

## Automation & Validation

- **Add a new week**:
    1. Run `./scripts/new-week.sh` (preferred) or copy from `TEMPLATE.md`.
    2. Update the main README table (newest week at top).
    3. Increment "Weeks Documented".
- **Check links**: Run `./scripts/check-urls.sh` after content changes. Review `logs/url-checks/UNRESOLVED.md` for broken links.
- **Skill usage**: Use `.github/skills/` for modular automation (e.g., `checking-urls`, `learning-content-summarizer`). Follow each `SKILL.md` for workflow and best practices.

## Examples

- Adding a week: `./scripts/new-week.sh` → edit `README.md` → commit.
- Adding a post: Create `weeks/YYYY/week-XX/topic-name.md`, add link to week README, include back-link at bottom.
- Checking URLs: `./scripts/check-urls.sh` → review logs.

## Key Files & Directories

- `README.md` — main navigation and summary
- `scripts/new-week.sh` — week creation automation
- `scripts/check-urls.sh` — link validation
- `weeks/` — all content, organized by year/week
- `.github/skills/` — agent skills (see each `SKILL.md`)

## Session Workflow

Maintain `PROGRESS.md` to preserve context across sessions:

- **Start**: Read today's and yesterday's entries for relevant context (use `progress-context` skill)
- **During**: Update `PROGRESS.md` after completing key tasks
- **End**: Ensure all changes are logged with appropriate topic headers

**What to log:**
- Completed changes (files modified, features added)
- Blockers encountered and how they were resolved
- Failed approaches (what didn't work and why)
- Decisions made and reasoning

**Topic headers:** `### Scripts`, `### Content`, `### Conventions`, `### Docs`, `### Fixes`, `### Blockers`

## Project-Specific Patterns

- **Never** put detailed content in weekly README files—use post files.
- **Always** use bullet points and links for navigation.
- **Preserve** all existing links and content when updating navigation.
- **Automate** repetitive tasks via scripts and skills where possible.

---
For new automation or agent skills, see `.github/skills/` for structure and best practices. When in doubt, follow the pattern of existing weeks and posts.
