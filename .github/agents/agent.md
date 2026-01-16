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
    └── YYYY/week-XX/README.md
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

## Guidelines
- Keep main README concise — it's a navigation hub
- Only document topics where you actually learned something
- Use bullet points, not verbose paragraphs
- Skip empty sections in weekly files
