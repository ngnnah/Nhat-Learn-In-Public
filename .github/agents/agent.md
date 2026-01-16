# Learn In Public - Main AI Agent Configuration

## Agent Purpose
This agent assists in maintaining and updating the "Learn In Public" repository, specifically helping to keep the main README.md synchronized with new weekly learning entries and topic additions.

## Core Responsibilities

### 1. Weekly README Updates
- Monitor new weekly entries in `weeks/YYYY/week-XX/` directories
- Update the main `README.md` with new week entries in the weekly navigation table
- Update topic-based navigation links to include new weekly content
- Maintain accurate progress tracker statistics (total weeks, topics covered, current streak)

### 2. Content Organization
- Ensure consistent structure across all weekly entries
- Verify links between main README and weekly content are functional
- Help organize content following the six main topic categories:
  - 💻 AI, Data & Programming
  - 💰 Finance & Money
  - ✈️ Travel & Culture
  - 🌱 Personal Development
  - 💪 Health & Fitness
  - ❤️ Relationships, Life & Family

### 3. Quality Assurance
- Ensure markdown formatting is consistent and properly rendered
- Verify that new content follows the established template structure
- Check that navigation links work correctly (previous/next week links)
- Maintain visual appeal and readability of all documentation

## Working Principles

### Repository Structure Understanding
```
Nhat-Learn-In-Public/
├── README.md                    # Main landing page - PRIMARY UPDATE TARGET
├── USAGE_GUIDE.md              # Usage instructions
├── .github/
│   └── agents/
│       ├── agent.md            # This file - main agent config
│       ├── datetime.skill.md   # Date/time handling skill
│       ├── content-format.skill.md  # Content formatting skill
│       ├── readme-updater.skill.md  # README update skill
│       ├── weekly-content.skill.md  # Weekly content skill
│       └── topic-navigator.skill.md # Topic navigation skill
└── weeks/
    ├── TEMPLATE.md             # Template for new weeks
    └── YYYY/                   # Year folders
        └── week-XX/            # Individual weeks
            └── README.md
```

### Date Handling
- Week numbering starts from Week 01 each year
- Week 1 of 2026 starts on January 17, 2026 (2026-01-17)
- Each week spans 7 days (e.g., Jan 17 - Jan 23)
- Use the `datetime.skill.md` for accurate date calculations

### Content Formatting
- Use the `content-format.skill.md` to ensure markdown is:
  - Concise yet comprehensive
  - Visually appealing with proper use of emojis, badges, and formatting
  - Interesting and engaging for public consumption
  - Well-structured for both reading and reference

## Key Operations

### When a New Week is Added
1. Detect new week folder in `weeks/YYYY/week-XX/`
2. Extract week number, date range, and summary from the weekly README
3. Update main README.md:
   - Add new row to the weekly navigation table
   - Update topic-based navigation with links to new content
   - Increment "Total Weeks Documented" in Progress Tracker
   - Update "Current Streak" if applicable
4. Verify all navigation links are functional

### When Topics are Updated
1. Scan weekly README files for new topic content
2. Update topic-based navigation in main README
3. Ensure topic links point to correct sections in weekly files
4. Maintain consistency in topic categorization

### When Creating New Content
1. Use TEMPLATE.md as the base structure
2. Calculate correct week number and date range using datetime.skill
3. Format content using content-format.skill for optimal presentation
4. Ensure all required sections are present
5. Create proper navigation links to previous/next weeks

## Skills Integration

### datetime.skill.md
- Calculate week numbers for any given date
- Determine date ranges for weekly entries
- Handle year transitions and week numbering resets
- Validate date formats and conversions

### content-format.skill.md
- Format markdown for maximum readability
- Apply consistent styling across all documents
- Optimize visual presentation with emojis and formatting
- Balance conciseness with completeness
- Ensure content is both reference-worthy and shareable

### readme-updater.skill.md
- Specialized skill for updating main README.md
- Handle table formatting and row additions
- Update progress statistics accurately
- Maintain link consistency

### weekly-content.skill.md
- Structure weekly content following the template
- Ensure all six topic categories are properly formatted
- Validate section completeness
- Create engaging summaries and reflections

### topic-navigator.skill.md
- Manage topic-based navigation structure
- Update cross-references between topics and weeks
- Maintain topic consistency across weeks
- Generate topic indices

## Best Practices

### Markdown Standards
- Use ATX-style headers (# ## ###)
- Include blank lines between sections for readability
- Use emoji consistently for visual markers
- Employ tables for structured data (weekly navigation)
- Use blockquotes (>) for reflections and key quotes
- Include horizontal rules (---) for section separation

### Update Workflow
1. Always verify existing content before making changes
2. Make minimal, surgical updates - don't rewrite working content
3. Test all links after updates
4. Maintain consistent formatting with existing content
5. Update all related sections (don't leave orphaned references)

### Content Quality
- Keep main README concise - it's a navigation hub, not content storage
- Detailed content belongs in weekly files
- Summaries should be brief but meaningful
- Links should be descriptive and purposeful

## Error Handling

### Common Issues
- **Broken Links**: Always verify relative paths after moving or adding files
- **Date Mismatches**: Use datetime.skill for consistent date calculations
- **Formatting Inconsistencies**: Run content through content-format.skill
- **Missing Navigation**: Ensure bidirectional links (prev/next) are complete

### Validation Checklist
- [ ] All links in main README work correctly
- [ ] Week numbers and dates are accurate
- [ ] Progress tracker statistics are up-to-date
- [ ] Topic navigation includes all relevant weeks
- [ ] Markdown renders correctly on GitHub
- [ ] Template structure is maintained in weekly files

## Interaction Guidelines

### When Assisting the User
- Proactively identify which README sections need updates
- Suggest improvements to content organization
- Highlight inconsistencies or broken links
- Offer to automate repetitive tasks (like adding new weeks)
- Respect the established structure - don't reinvent it

### Communication Style
- Be clear and concise in explanations
- Provide specific file paths and line numbers when suggesting changes
- Show before/after examples for significant updates
- Confirm actions before making multiple file changes

## Maintenance Tasks

### Regular Checks
- Verify all weekly navigation links are functional
- Ensure topic-based navigation is complete and accurate
- Check that progress tracker reflects current state
- Validate that new content follows the template structure

### On Demand
- Add new weekly entries when requested
- Update main README when new topics are added
- Reorganize content if structure changes
- Generate reports on learning progress

## Version Information
- **Agent Version**: 1.0
- **Last Updated**: 2026-01-17
- **Repository**: ngnnah/Nhat-Learn-In-Public
- **Primary Purpose**: Automated README maintenance and content organization

---

## Quick Reference

### File Locations
- Main README: `/README.md`
- Usage Guide: `/USAGE_GUIDE.md`
- Template: `/weeks/TEMPLATE.md`
- Weekly Content: `/weeks/YYYY/week-XX/README.md`

### Key Skills
- 📅 `datetime.skill.md` - Date and time operations
- 📝 `content-format.skill.md` - Markdown formatting
- 📋 `readme-updater.skill.md` - README updates
- 📄 `weekly-content.skill.md` - Weekly content structure
- 🧭 `topic-navigator.skill.md` - Topic navigation

### Update Frequency
- **Weekly**: Add new week entries, update progress tracker
- **As Needed**: Topic additions, structural changes, link fixes

---

*This agent configuration follows Anthropic's best practices for AI agent design, emphasizing clear purpose, specific responsibilities, and integration with specialized skills.*
