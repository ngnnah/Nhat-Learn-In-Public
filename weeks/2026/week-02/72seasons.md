# 🌿 Built a Claude Code Skill for Seasonal Awareness

I created `/seasons` — a custom Claude Code skill that displays the current Japanese micro-season (kō 候) from the traditional 72-season calendar.

## What it does

Each ~5-day period has its own poetic name tied to nature: "Butterburs bud," "East wind melts the ice," "Caterpillars become butterflies."

Running `/seasons` outputs:
- Current kō with Japanese name, romaji, and English translation
- ELI5 explanation of why this natural event happens now
- Philosophical insight connecting nature to work/life
- Daily practice — one small actionable suggestion
- **Curated quote matching the seasonal theme**
- Resources for deeper exploration

**Example:** [Log from Jan 23, 2026](https://github.com/ngnnah/I-And-AI/blob/main/.claude/skills/seasons/logs/2026-01-23.md)

## Why build this?

Coding sessions can feel disconnected from the natural world. This skill creates a brief moment of seasonal grounding — a reminder that even in "Major Cold," change is already underway beneath the surface.

The Western calendar is abstract — arbitrary month boundaries with no connection to what's actually happening in nature. The Japanese 72 seasons divide the year into ~5-day periods, each named for a specific natural event: "Butterburs bud," "Bush warblers start singing," "Dew glistens white on grass."

Starting a coding session with seasonal awareness shifts perspective. It's a small ritual that says: you're part of something larger than the ticket queue.

## Tech details

**Core Implementation:**
```
.claude/skills/seasons/
├── SKILL.md              # Instructions + 72 kō reference table + quotes
├── sekki-explanations.md # ELI5 for each solar term
├── resources.md          # Curated links per season
├── images/               # Local images (git-tracked)
└── logs/                 # Auto-generated journal
```

**Reference:** [sekki-explanations.md](https://github.com/ngnnah/I-And-AI/blob/main/.claude/skills/seasons/sekki-explanations.md) — Detailed ELI5 explanations for each of the 24 solar terms

**Reference:** [resources.md](https://github.com/ngnnah/I-And-AI/blob/main/.claude/skills/seasons/resources.md) — Reference for the 72 micro-seasons with English translations, images, and curated links

**Key Features:**
- Self-contained Claude Code skill — no external APIs
- 72 kō reference table with dates, kanji, romaji, translations
- **Quotes library**: 40+ quotes organized by season (Spring, Summer, Autumn, Winter, Universal, Playful)
- Curated resource links per micro-season
- Auto-logs daily output to `./logs/YYYY-MM-DD.md` for a seasonal coding journal
- Local images supported (no broken external links)
- Contemplation themes that shift throughout the year

**Source:** [github.com/ngnnah/I-And-AI/.claude/skills/seasons](https://github.com/ngnnah/I-And-AI/tree/main/.claude/skills/seasons)

---

**Tags**: #LearnInPublic #ClaudeCode #SeasonalAwareness #72Seasons #JapaneseCalendar

[← Back to Week 02](README.md)        