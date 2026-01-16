# 🤖 AI Agent Configuration

This directory contains configuration files for AI agents (Claude, GitHub Copilot, etc.) to help maintain and update the Learn In Public repository automatically.

## 📋 Overview

The agent system is designed to assist with:
- **Automatic README updates** when new weekly content is added
- **Consistent content formatting** across all markdown files
- **Accurate date and week number calculations**
- **Topic-based navigation management**
- **Quality assurance** for content structure

## 📁 File Structure

### Main Agent Configuration

#### `agent.md`
**Purpose**: Primary agent configuration file that defines the core responsibilities and working principles for AI assistants.

**Key Responsibilities:**
- Monitor new weekly entries and update main README
- Maintain weekly navigation table and topic-based navigation
- Update progress tracker statistics
- Ensure consistent structure across all content
- Coordinate between different skills

**When to Use**: This is the entry point for AI agents. Read this first to understand the overall system.

---

### Specialized Skills

#### `datetime.skill.md`
**Purpose**: Handles all date and time calculations for the learning journal.

**Key Features:**
- Week 1 of 2026 starts on January 17, 2026 (Friday)
- Calculate week numbers from any date
- Generate date ranges for weekly entries
- Format dates for display (full and abbreviated)
- Validate date ranges and handle year boundaries

**When to Use**: 
- Creating new weekly entries (need week number and date range)
- Updating README navigation table (need abbreviated dates)
- Validating date consistency across files

**Quick Reference:**
```
Week 1: January 17 - January 23, 2026
Week 2: January 24 - January 30, 2026
Week 3: January 31 - February 06, 2026
...
```

---

#### `content-format.skill.md`
**Purpose**: Ensures all markdown content is concise, visually appealing, interesting, and optimized for reference and sharing.

**Core Principles:**
1. **Conciseness with Completeness** - Brief but thorough
2. **Visual Appeal** - Strategic emoji use, proper spacing, clear hierarchy
3. **Engagement & Interest** - Active voice, personal touch, practical focus
4. **Reference Optimization** - Structured, searchable, linked, future-proof

**When to Use**:
- Writing any new content (weekly entries, documentation)
- Formatting existing content for better readability
- Ensuring consistency across all markdown files
- Making content both personally meaningful and publicly valuable

**Key Standards:**
- Use ATX-style headers (# ## ###)
- Include blank lines between sections
- Use blockquotes for reflections
- Format links with descriptions
- Keep content scannable with lists and tables

---

#### `readme-updater.skill.md`
**Purpose**: Specialized procedures for updating the main README.md file when new content is added.

**Primary Tasks:**
1. **Weekly Navigation Table Updates** - Add new week entries
2. **Topic-Based Navigation Updates** - Link to new weekly content by topic
3. **Progress Tracker Maintenance** - Update statistics (total weeks, streak)
4. **Link Verification** - Ensure all internal links work

**When to Use**:
- After creating a new weekly entry
- When backfilling missed weeks
- When starting a new year
- Verifying README accuracy

**Update Sequence:**
1. Extract info from new weekly README
2. Add row to weekly navigation table
3. Update relevant topic section links
4. Increment "Total Weeks Documented"
5. Update "Current Streak"
6. Verify all links are correct

---

#### `weekly-content.skill.md`
**Purpose**: Standards for creating and maintaining weekly learning entries with consistent structure and quality.

**Weekly Entry Components:**
1. Title and Date Range (H1)
2. Week at a Glance (Blockquote)
3. Six Topic Sections (H2)
4. Week Summary (H2)
5. Navigation Links (Footer)

**When to Use**:
- Creating new weekly entries from template
- Validating existing weekly content structure
- Ensuring quality and completeness of weekly documentation
- Understanding what goes in each topic section

**Quality Checklist:**
- Structure: All required sections present
- Content: Specific, meaningful, personal
- Formatting: Proper markdown syntax
- Links: Navigation links correct

---

#### `topic-navigator.skill.md`
**Purpose**: Manages topic-based navigation and ensures consistent categorization across the repository.

**The Six Core Topics:**
1. 💻 **AI, Data & Programming** - Technical skills, coding, data science
2. 💰 **Finance & Money** - Personal finance, investing, wealth building
3. ✈️ **Travel & Culture** - Travel, languages, cultural learning
4. 🌱 **Personal Development** - Self-improvement, productivity, career
5. 💪 **Health & Fitness** - Exercise, nutrition, wellness
6. ❤️ **Relationships, Life & Family** - Relationships, life balance, family

**When to Use**:
- Adding links to topic sections in main README
- Deciding which topic category content belongs to
- Generating anchor links to topic sections
- Maintaining topic-based navigation

**Link Format:**
```markdown
[Week XX - Topic Name](weeks/YYYY/week-XX/README.md#anchor)
```

---

## 🔄 Typical Workflow

### Adding a New Week (Complete Process)

**Step 1: Create Weekly Content**
1. Use `datetime.skill.md` to calculate week number and date range
2. Copy template: `cp weeks/TEMPLATE.md weeks/2026/week-XX/README.md`
3. Use `weekly-content.skill.md` to structure content properly
4. Use `content-format.skill.md` to format content for quality
5. Add navigation links using `weekly-content.skill.md`

**Step 2: Update Main README**
1. Use `readme-updater.skill.md` to add new week to navigation table
2. Use `topic-navigator.skill.md` to add topic links
3. Update progress tracker statistics
4. Verify all links work

**Step 3: Validate**
1. Check structure completeness
2. Verify date calculations are correct
3. Test all links
4. Ensure formatting is consistent

## 🎯 Quick Start for AI Agents

If you're an AI agent helping with this repository:

1. **Read `agent.md` first** - Understand overall responsibilities
2. **Check current date** - Use `datetime.skill.md` to determine current week
3. **Assess the task** - Which skills are needed?
4. **Follow the workflow** - Use skills in proper sequence
5. **Validate work** - Cross-reference with other skills

### Common Task → Skill Mapping

| Task | Primary Skill | Supporting Skills |
|------|--------------|-------------------|
| Create new week | `weekly-content.skill.md` | `datetime.skill.md`, `content-format.skill.md` |
| Update README | `readme-updater.skill.md` | `topic-navigator.skill.md`, `datetime.skill.md` |
| Format content | `content-format.skill.md` | - |
| Calculate dates | `datetime.skill.md` | - |
| Add topic links | `topic-navigator.skill.md` | `readme-updater.skill.md` |
| Full new week process | All skills in sequence | Start with `agent.md` |

## 📊 Agent System Architecture

```
agent.md (Main Configuration)
    ├── datetime.skill.md (Date Calculations)
    ├── content-format.skill.md (Formatting Standards)
    ├── readme-updater.skill.md (README Updates)
    │       └── topic-navigator.skill.md (Topic Links)
    └── weekly-content.skill.md (Weekly Structure)
            └── content-format.skill.md (Content Formatting)
```

## 🔍 Finding Information

### By Question Type

**"What week is today?"**
→ `datetime.skill.md` - Calculate from reference date (Week 1 = 2026-01-17)

**"How do I format this markdown?"**
→ `content-format.skill.md` - Formatting standards and examples

**"How do I update the README?"**
→ `readme-updater.skill.md` - Step-by-step update procedures

**"What goes in a weekly entry?"**
→ `weekly-content.skill.md` - Weekly structure and content guidelines

**"Which topic does this belong to?"**
→ `topic-navigator.skill.md` - Topic categorization guidelines

**"What should I do overall?"**
→ `agent.md` - Main agent responsibilities and workflow

## 🛠️ Maintenance

### Keeping Skills Updated

When making changes to repository structure:
1. Update relevant skill files to reflect changes
2. Update `agent.md` if core responsibilities change
3. Keep version numbers and "Last Updated" dates current
4. Test that all examples in skills still work

### Skill Version Information

All skills include:
- **Skill Version**: Current version number (1.0, 1.1, etc.)
- **Last Updated**: Date of last modification (YYYY-MM-DD)
- **Purpose**: Brief description of skill's role

Check these when troubleshooting or updating.

## 💡 Best Practices

### For AI Agents
1. **Read before acting** - Review relevant skills before making changes
2. **Follow workflows** - Use established procedures, don't improvise
3. **Cross-reference** - Verify information across multiple skills
4. **Validate work** - Check your work against skill checklists
5. **Be consistent** - Maintain established patterns and formats

### For Repository Maintainers
1. **Keep skills synchronized** - Update all affected skills when changing structure
2. **Document changes** - Update skill files when workflows change
3. **Test thoroughly** - Verify AI agents understand updated skills
4. **Version control** - Track skill changes with clear commit messages
5. **Review regularly** - Ensure skills remain accurate and useful

## 📚 Additional Resources

### Within This Repository
- `/README.md` - Main landing page (target of updates)
- `/USAGE_GUIDE.md` - Manual for human users
- `/weeks/TEMPLATE.md` - Template for weekly entries
- `/weeks/2026/week-01/README.md` - Example weekly entry

### External References
- [Anthropic Claude Documentation](https://docs.anthropic.com)
- [GitHub Markdown Guide](https://guides.github.com/features/mastering-markdown/)
- [Learn in Public Philosophy](https://www.swyx.io/learn-in-public)

## 🤝 Contributing to Agent Skills

If you find issues with agent skills or have improvements:

1. **Test thoroughly** - Ensure changes work with AI agents
2. **Update version** - Increment version number and update date
3. **Document changes** - Explain what changed and why
4. **Cross-reference** - Update related skills if needed
5. **Validate** - Test that AI agents understand the updates

## 📝 Skill File Format

Each skill file follows this structure:

```markdown
# Skill Name

## Skill Purpose
Brief description of what this skill does

## Core Responsibilities / Key Information
Main functions and information

## [Detailed Sections]
Specific guidelines, procedures, examples

## Integration with Other Skills
How this skill works with others

## Quick Reference
Tables, checklists, shortcuts

---

**Skill Version**: X.X
**Last Updated**: YYYY-MM-DD
**[Additional metadata]**
```

## 🔐 Security Note

Agent configuration files should NOT contain:
- Secrets or API keys
- Personal identifiable information (PII)
- Credentials or passwords
- Sensitive business logic

All agent skills are public and should contain only:
- Structural information
- Formatting guidelines
- Navigation procedures
- Content organization standards

---

## 📈 Version History

### Version 1.0 (2026-01-17)
- Initial agent system created
- Six skill files established
- Main agent configuration defined
- Week 1 reference date set (2026-01-17)

---

<div align="center">

**"Empowering AI agents to maintain learning journals with precision and consistency."**

*Built following Anthropic best practices for AI agent design.*

</div>
