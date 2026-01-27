# Progress Log

> AI agents: Use the `progress-context` skill to read this efficiently.

---

## 2026-01-27

### Scripts
- Fixed `new-week.sh` to use sequential numbering (week-01, week-02...) instead of ISO week numbers
- Script now finds highest existing week folder and increments

### Content
- Renamed `week-05` → `week-03` (was incorrectly using ISO week number)
- Created `book-microadventures.md` in week-01
- Renamed `superforecasting.md` → `book-superforecasting.md`
- Updated "Why This Book?" sections to be concise and catchy

### Conventions
- Added `book-` prefix for book review posts
- TEMPLATE.md now starts clean (no empty topic sections)
- Weekly READMEs only include topics with actual content

### Docs
- Added "AI Assistant Setup" section to main README (symlinks, scripts)
- Documented symlink structure: `.claude/CLAUDE.md` → `.github/copilot-instructions.md`
- Created `progress-context` skill for reading PROGRESS.md
- Created PROGRESS.md with topic headers for efficient searching
