# Learn In Public - Agent Configuration

## Purpose
Help maintain the learning journal by updating the main README when new weekly entries are added.

## Repository Structure
```
Nhat-Learn-In-Public/
├── README.md              # Main landing page with weekly table
├── scripts/new-week.sh    # Script to create new week
└── weeks/
    ├── TEMPLATE.md        # Template for new weeks
    └── YYYY/week-XX/
        ├── README.md      # Week hub (links only, no detailed content)
        └── post-name.md   # Detailed learning posts
```

## When Adding a New Week

1. Run `./scripts/new-week.sh` or manually create from template
2. Update the weekly table in README.md (newest first)
3. Update the "Weeks Documented" count

## Topic Categories
- 💻 AI, Data & Programming
- 💰 Finance & Money
- ✈️ Travel & Culture
- 🌱 Personal Development
- 💪 Health & Fitness
- ❤️ Relationships, Life & Family

## Content Structure

**Weekly README.md** — navigation hub only:
- Brief bullet points or one-liners
- Links to detailed posts: `📝 [Post Title](post-name.md)`
- No full explanations or lengthy content

**Separate post files** (e.g., `topic-name.md`) — detailed content:
- ELI5 explanations, tables, comparisons
- Use kebab-case for filenames: `sheriff-vs-police.md`
- Include `[← Back to Week XX](README.md)` at the bottom

## Guidelines
- Keep main README concise — it's a navigation hub
- Only document topics where you actually learned something
- Use bullet points, not verbose paragraphs
- Skip empty sections in weekly files
