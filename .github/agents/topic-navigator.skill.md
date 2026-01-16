# Topic Navigator Skill

## Skill Purpose
Manages topic-based navigation and organization across the Learn In Public repository, ensuring consistent categorization, effective cross-referencing, and easy discovery of content by topic rather than chronologically.

## Core Responsibilities

### 1. Topic Categorization
Maintain consistent use of the six core topic categories across all content

### 2. Cross-Reference Management
Update and maintain topic-based navigation in the main README

### 3. Topic Link Generation
Create properly formatted links to topic sections in weekly content

### 4. Topic Discovery
Help users find all content related to specific topics across weeks

## The Six Core Topics

### 💻 AI, Data & Programming

**Scope:**
- Artificial Intelligence and Machine Learning
- Data Science and Analytics
- Software Development and Programming
- Web Development (Frontend, Backend, Full-Stack)
- DevOps, Cloud Computing, Infrastructure
- Technical Tools and Technologies
- Algorithms and Data Structures
- Computer Science Concepts

**Keywords:**
Python, JavaScript, React, SQL, Git, Docker, AWS, API, Algorithm, Database, Framework, Library, Testing, Debugging, Code Review, Architecture

**Anchor Format:** `#-ai-data--programming`

### 💰 Finance & Money

**Scope:**
- Personal Finance and Budgeting
- Investing (Stocks, Bonds, Real Estate, Crypto)
- Retirement Planning (401k, IRA, etc.)
- Economics and Financial Markets
- Business and Entrepreneurship
- Wealth Building Strategies
- Financial Literacy and Education
- Tax Planning

**Keywords:**
Budget, Invest, Savings, Stocks, Index Funds, FIRE, Compound Interest, ROI, Portfolio, Debt, Net Worth, Cash Flow, Passive Income, Real Estate

**Anchor Format:** `#-finance--money`

### ✈️ Travel & Culture

**Scope:**
- Travel Planning and Experiences
- Cultural Learning and Understanding
- Language Learning (any language)
- Geography and World Knowledge
- International Experiences
- Cultural Events and Activities
- Global Perspectives
- Immigration and Expat Life

**Keywords:**
Spanish, French, Mandarin, Travel, Culture, Language, Translation, Geography, Passport, Visa, International, Cultural Exchange, Customs, Traditions

**Anchor Format:** `#-travel--culture`

### 🌱 Personal Development

**Scope:**
- Self-Improvement and Growth
- Productivity and Time Management
- Habit Formation and Behavior Change
- Learning How to Learn
- Career Development and Skills
- Goal Setting and Achievement
- Mindset and Mental Models
- Communication and Social Skills
- Leadership and Influence

**Keywords:**
Productivity, Habits, Goals, Mindset, Career, Learning, Communication, Time Management, Pomodoro, Deep Work, Growth Mindset, Discipline, Focus

**Anchor Format:** `#-personal-development`

### 💪 Health & Fitness

**Scope:**
- Physical Exercise and Training
- Nutrition and Diet
- Sleep and Recovery
- Mental Health and Wellness
- Stress Management
- Injury Prevention and Health
- Healthy Habits and Lifestyle
- Sports and Athletics

**Keywords:**
Exercise, Workout, Gym, Running, Nutrition, Protein, Sleep, Mental Health, Meditation, Yoga, Strength Training, Cardio, Diet, Wellness

**Anchor Format:** `#-health--fitness`

### ❤️ Relationships, Life & Family

**Scope:**
- Family Relationships and Time
- Romantic Relationships and Dating
- Friendships and Social Connections
- Work-Life Balance
- Parenting and Childcare
- Life Events and Milestones
- Social Activities and Community
- Personal Life Experiences

**Keywords:**
Family, Relationships, Friends, Dating, Marriage, Parenting, Work-Life Balance, Social, Community, Connection, Love, Support, Quality Time

**Anchor Format:** `#-relationships-life--family`

## Topic Navigation in README

### Current Structure

Located in main README.md under `## 🏷️ Navigate by Topic`:

```markdown
## 🏷️ Navigate by Topic

### 💻 AI, Data & Programming
Exploring artificial intelligence, data science, software development, and technical skills.

- [Week 01 - AI & Programming](weeks/2026/week-01/README.md#-ai-data--programming)
- [Week 02 - AI & Programming](weeks/2026/week-02/README.md#-ai-data--programming)

### 💰 Finance & Money
Learning about personal finance, investing, economics, and wealth building.

- [Week 01 - Finance & Money](weeks/2026/week-01/README.md#-finance--money)

### ✈️ Travel & Culture
Discovering new cultures, languages, travel experiences, and global perspectives.

- [Week 01 - Travel & Culture](weeks/2026/week-01/README.md#-travel--culture)

### 🌱 Personal Development
Focusing on self-improvement, productivity, mindset, and life skills.

- [Week 01 - Personal Development](weeks/2026/week-01/README.md#-personal-development)

### 💪 Health & Fitness
Building better habits around physical health, nutrition, exercise, and wellness.

- [Week 01 - Health & Fitness](weeks/2026/week-01/README.md#-health--fitness)

### ❤️ Relationships, Life & Family
Growing in relationships, family connections, and life balance.

- [Week 01 - Relationships & Life](weeks/2026/week-01/README.md#-relationships-life--family)
```

### Topic Section Components

Each topic section has:
1. **Header (H3)**: Topic name with emoji
2. **Description**: One-line overview of topic scope
3. **Link List**: Chronological links to weekly content

### Description Guidelines

Keep descriptions:
- **One line**: Brief, not a paragraph
- **Active voice**: Use verbs like "Exploring", "Learning", "Building", "Discovering"
- **Scope-defining**: Helps users understand what falls under this topic
- **Consistent tone**: Similar structure across all six topics

**Current Descriptions:**
- AI: "Exploring artificial intelligence, data science, software development, and technical skills."
- Finance: "Learning about personal finance, investing, economics, and wealth building."
- Travel: "Discovering new cultures, languages, travel experiences, and global perspectives."
- Personal Dev: "Focusing on self-improvement, productivity, mindset, and life skills."
- Health: "Building better habits around physical health, nutrition, exercise, and wellness."
- Relationships: "Growing in relationships, family connections, and life balance."

## Adding Links to Topic Sections

### When to Add a Link

Add a link to a topic section when:
- A new weekly entry has content in that topic section
- The content is substantial (not just empty placeholders)
- At least "What I Learned" or another subsection has real content

Do NOT add a link when:
- Topic section is empty or just has dashes (-)
- Only has placeholder text
- Was skipped in that week

### Link Format

```markdown
[Week XX - Topic Name](weeks/YYYY/week-XX/README.md#anchor)
```

**Components:**
- **Week XX**: Two-digit week number (01, 02, not 1, 2)
- **Topic Name**: Short topic identifier (see standard names below)
- **Path**: Relative path from README.md location
- **Anchor**: Lowercase, emoji removed, spaces to dashes

### Standard Topic Names for Links

Use these consistent short names in link text:

| Full Topic Name | Short Name for Links |
|----------------|---------------------|
| AI, Data & Programming | AI & Programming |
| Finance & Money | Finance & Money |
| Travel & Culture | Travel & Culture |
| Personal Development | Personal Development |
| Health & Fitness | Health & Fitness |
| Relationships, Life & Family | Relationships & Life |

**Examples:**
```markdown
[Week 01 - AI & Programming](weeks/2026/week-01/README.md#-ai-data--programming)
[Week 02 - Finance & Money](weeks/2026/week-02/README.md#-finance--money)
[Week 03 - Personal Development](weeks/2026/week-03/README.md#-personal-development)
```

### Anchor Generation Rules

GitHub automatically converts headers to anchors:

1. **Remove emoji**: `💻 AI, Data & Programming` → `AI, Data & Programming`
2. **Convert to lowercase**: `AI, Data & Programming` → `ai, data & programming`
3. **Replace spaces with dashes**: `ai, data & programming` → `ai,-data-&-programming`
4. **Keep special chars**: Ampersands (&), commas stay
5. **Add leading dash**: GitHub adds dash for emoji → `#-ai,-data-&-programming`
6. **Remove commas**: Final cleanup → `#-ai-data--programming`

**Quick Reference Table:**

| Header | Anchor |
|--------|--------|
| `## 💻 AI, Data & Programming` | `#-ai-data--programming` |
| `## 💰 Finance & Money` | `#-finance--money` |
| `## ✈️ Travel & Culture` | `#-travel--culture` |
| `## 🌱 Personal Development` | `#-personal-development` |
| `## 💪 Health & Fitness` | `#-health--fitness` |
| `## ❤️ Relationships, Life & Family` | `#-relationships-life--family` |

## Update Procedures

### Adding a New Week's Links

**Step 1: Identify Content**
Scan the new weekly README to determine which topics have content:

```bash
# Check for non-empty sections
# Look for "What I Learned", "Projects & Practice", etc. with actual content
```

**Step 2: Add Links Chronologically**
For each topic with content, add a new link at the END of that topic's list:

```markdown
### 💻 AI, Data & Programming
Exploring artificial intelligence, data science, software development, and technical skills.

- [Week 01 - AI & Programming](weeks/2026/week-01/README.md#-ai-data--programming)
- [Week 02 - AI & Programming](weeks/2026/week-02/README.md#-ai-data--programming)
- [Week 03 - AI & Programming](weeks/2026/week-03/README.md#-ai-data--programming)  ← New
```

**Step 3: Verify Links**
Ensure:
- Week number is correct (matches file path)
- Anchor format is correct (use reference table)
- Relative path is correct from README.md
- Link is added to correct topic section

### Handling Sparse Content

**Scenario**: Week 05 has content only in AI, Personal Development, and Health

**Action**: Add links only to those three topic sections

```markdown
### 💻 AI, Data & Programming
- [Week 01 - AI & Programming](...)
- [Week 02 - AI & Programming](...)
- [Week 05 - AI & Programming](...)  ← Added (notice gap from Week 02 to 05)

### 💰 Finance & Money
- [Week 01 - Finance & Money](...)
- [Week 02 - Finance & Money](...)
(Week 05 not added - no content)

### 🌱 Personal Development
- [Week 01 - Personal Development](...)
- [Week 05 - Personal Development](...)  ← Added

### 💪 Health & Fitness
- [Week 01 - Health & Fitness](...)
- [Week 05 - Health & Fitness](...)  ← Added
```

This is normal and expected - not every week covers all topics.

## Topic Categorization Guidelines

### Deciding Topic Placement

Sometimes content could fit multiple topics. Use these guidelines:

**Primary Topic Rule:**
Place content in the topic where it fits BEST, even if it relates to others.

**Examples:**

| Content | Primary Topic | Reasoning |
|---------|--------------|-----------|
| Built a budgeting app | AI & Programming | Technical project, even though it's finance-related |
| Learned about compound interest | Finance & Money | Financial concept |
| Used Pomodoro for coding | Personal Development | Productivity technique, not coding itself |
| Morning workout routine | Health & Fitness | Physical activity |
| Read book on communication | Personal Development | Skill development |
| Planning trip to Spain | Travel & Culture | Travel planning |
| Learning Spanish for trip | Travel & Culture | Language for travel context |
| Quality time with family | Relationships & Life | Family time |

**Cross-Topic Mentions:**
If content spans topics, put it in the PRIMARY topic and mention the connection:

```markdown
## 💻 AI, Data & Programming

### Projects & Practice
- Built a personal finance tracker app using React
  - Applied concepts from my finance learning to create a practical tool
  - Integrated with bank APIs to track spending automatically
```

### Edge Cases

**Coding Projects Related to Other Domains:**
- **Put in**: AI & Programming
- **Mention**: The domain connection (finance, health, etc.)

**Books on Technical Topics:**
- **Put in**: AI & Programming (if technical how-to)
- **Put in**: Personal Development (if about career, learning to code, etc.)

**Health/Fitness Apps or Tracking:**
- **Put in**: Health & Fitness
- **Mention**: Any tech aspects in the content

**Business/Entrepreneurship:**
- **Put in**: Finance & Money (if about money, business finances)
- **Put in**: Personal Development (if about skills, career, growth)

**Work-Life Balance, Career Growth:**
- **Put in**: Personal Development (primary category for career)
- **Or**: Relationships & Life (if specifically about life balance)

## Maintenance Tasks

### Regular Checks

**After Each Week Added:**
- [ ] Verify all topic links are added for content-filled sections
- [ ] Check that anchor formats are correct
- [ ] Ensure chronological order is maintained
- [ ] Confirm no duplicate links exist

**Monthly Review:**
- [ ] Scan for any orphaned content (weekly content not linked)
- [ ] Verify all links still work (no moved files)
- [ ] Check for consistent topic categorization
- [ ] Ensure descriptions still match scope

### Link Validation

**How to Test:**
1. Open README.md in browser (GitHub preview)
2. Click each topic link to verify it:
   - Goes to the correct weekly file
   - Jumps to the correct section
   - Doesn't 404

**Common Link Issues:**
- Wrong week number in path (week-03 vs week-3)
- Wrong anchor format (missing dash, wrong case)
- Wrong relative path depth
- Moved or renamed files

### Reorganization Scenarios

**If Adding a New Topic Category:**
1. Update main topic list (rare - current 6 are comprehensive)
2. Add new H3 section in topic navigation
3. Write appropriate description
4. Determine anchor format
5. Update all weekly templates
6. Backfill links for existing weeks with that content

**If Merging Topics:**
1. Decide which topic absorbs the other
2. Move all links to primary topic section
3. Add note about consolidation
4. Update weekly template
5. Consider maintaining redirect or note

**If Splitting a Topic:**
1. Create new topic section in README
2. Review all existing weeks to recategorize
3. Move appropriate links to new section
4. Update descriptions to reflect narrower scope
5. Update weekly template

## Integration with Other Skills

### With readme-updater.skill.md
- Coordinate updates to README topic sections
- Ensure weekly and topic navigation stay synchronized

### With weekly-content.skill.md
- Use consistent topic categorization in weekly files
- Ensure topic sections in weekly files match expected structure

### With content-format.skill.md
- Apply formatting standards to topic descriptions
- Maintain visual consistency in topic navigation

### With datetime.skill.md
- Use correct week numbers in topic links
- Maintain chronological order in link lists

## Quick Reference

### Update Checklist for New Week

When adding Week XX:
1. [ ] Open new weekly README.md
2. [ ] Identify which of 6 topics have content
3. [ ] For each topic with content:
   - [ ] Go to that topic section in main README
   - [ ] Add link at end of list
   - [ ] Use format: `[Week XX - Topic Name](path#anchor)`
   - [ ] Verify anchor matches reference table
4. [ ] Save and commit changes
5. [ ] Test links in browser

### Link Format Template

```markdown
[Week XX - SHORT_TOPIC_NAME](weeks/YYYY/week-XX/README.md#ANCHOR)
```

**Variables:**
- `XX`: Two-digit week number (01, 02, 03...)
- `SHORT_TOPIC_NAME`: See standard names table above
- `YYYY`: Four-digit year (2026, 2027...)
- `ANCHOR`: See anchor reference table above

### Anchor Quick Copy-Paste

```
#-ai-data--programming
#-finance--money
#-travel--culture
#-personal-development
#-health--fitness
#-relationships-life--family
```

---

**Skill Version**: 1.0  
**Last Updated**: 2026-01-17  
**Topic Count**: 6 core topics  
**Primary File**: `/README.md` (topic navigation section)

*This skill ensures users can discover content by topic interest rather than just chronologically, making the repository more valuable as a reference and learning resource.*
