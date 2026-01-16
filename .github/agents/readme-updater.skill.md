# README Updater Skill

## Skill Purpose
Specialized skill for updating the main README.md file when new weekly content is added or topics are modified, ensuring consistency, accuracy, and proper navigation throughout the Learn In Public repository.

## Primary Responsibilities

### 1. Weekly Navigation Table Updates
Add new week entries to the chronological navigation table in README.md

### 2. Topic-Based Navigation Updates
Update topic sections with links to new weekly content

### 3. Progress Tracker Maintenance
Keep statistics accurate (total weeks, current streak, topics covered)

### 4. Link Verification
Ensure all internal links are functional and properly formatted

## Update Procedures

### Adding a New Week Entry

#### Step 1: Locate the Weekly Navigation Table
Find the table in README.md under `## 📅 Navigate by Week`:

```markdown
## 📅 Navigate by Week

### 2026

| Week | Date Range | Quick Summary | Link |
|------|------------|---------------|------|
| Week 01 | Jan 06 - Jan 12 | Getting started with the learning journal | [View →](weeks/2026/week-01/README.md) |
| Week 02 | Jan 13 - Jan 19 | Expanding knowledge across multiple domains | [View →](weeks/2026/week-02/README.md) |
```

#### Step 2: Extract Information from New Week
From the weekly README file (`weeks/YYYY/week-XX/README.md`), extract:
- Week number (e.g., Week 03)
- Date range (e.g., Jan 20 - Jan 26)
- Summary from "Week at a Glance" section (shorten if needed to ~50 characters)

#### Step 3: Add New Table Row
Insert the new row at the bottom of the appropriate year's table:

```markdown
| Week 03 | Jan 20 - Jan 26 | Brief summary of the week | [View →](weeks/2026/week-03/README.md) |
```

**Formatting Rules:**
- Use `Week XX` format (two digits, leading zero)
- Use abbreviated month format: `Mon DD - Mon DD`
- Keep summary concise (< 60 characters)
- Use `[View →](path)` for consistent link styling
- Maintain table alignment with spaces

### Updating Topic Navigation

#### Step 1: Identify New Topic Content
Scan the new weekly README for non-empty topic sections:
- 💻 AI, Data & Programming
- 💰 Finance & Money
- ✈️ Travel & Culture
- 🌱 Personal Development
- 💪 Health & Fitness
- ❤️ Relationships, Life & Family

#### Step 2: Add Links to Topic Sections
For each topic with content, add a link in the corresponding section:

```markdown
### 💻 AI, Data & Programming
Exploring artificial intelligence, data science, software development, and technical skills.

- [Week 01 - AI & Programming](weeks/2026/week-01/README.md#-ai-data--programming)
- [Week 02 - AI & Programming](weeks/2026/week-02/README.md#-ai-data--programming)
- [Week 03 - AI & Programming](weeks/2026/week-03/README.md#-ai-data--programming)  ← Add new
```

**Link Format Rules:**
- Use descriptive text: `[Week XX - Topic Name](path#anchor)`
- Anchor format: `#-topic-name-with-dashes` (lowercase, spaces become dashes)
- GitHub converts emojis in anchors: `💻 AI, Data & Programming` → `#-ai-data--programming`
- Maintain chronological order (oldest to newest)

#### Step 3: Handle Empty Topic Sections
If a topic section has no content in the new week:
- Do NOT add a link for that topic
- Topic sections can have varying numbers of links
- It's acceptable for some weeks to skip certain topics

### Updating Progress Tracker

#### Step 1: Locate Progress Tracker
Find the section in README.md:

```markdown
## 📈 Progress Tracker

- **Total Weeks Documented**: 2
- **Topics Covered**: 6
- **Started**: January 2026
- **Current Streak**: 2 weeks 🔥
```

#### Step 2: Update Statistics

**Total Weeks Documented:**
- Count total number of week folders in `weeks/YYYY/week-XX/`
- Increment by 1 when adding a new week

**Topics Covered:**
- This is the total number of topic categories (currently 6)
- Only update if new topic categories are added (rare)

**Started:**
- This is the month/year of Week 01
- Only update if starting a new year (January YYYY format)

**Current Streak:**
- Count consecutive weeks from most recent back to first gap
- If adding Week 03 and Week 02 exists: streak is 3
- If Week 02 was skipped: streak resets to 1
- Format: `X weeks 🔥` (include fire emoji)

#### Step 3: Apply Updates
Replace the old values with new calculated values:

```markdown
## 📈 Progress Tracker

- **Total Weeks Documented**: 3  ← Incremented
- **Topics Covered**: 6
- **Started**: January 2026
- **Current Streak**: 3 weeks 🔥  ← Updated
```

## Link Format Standards

### Internal Repository Links
Use relative paths from the README.md location:

```markdown
[Link Text](weeks/2026/week-01/README.md)
[Link with Anchor](weeks/2026/week-01/README.md#section-anchor)
[Other Docs](USAGE_GUIDE.md)
```

### Anchor Link Format
GitHub automatically generates anchors from headers:

| Header | Anchor |
|--------|--------|
| `## 💻 AI, Data & Programming` | `#-ai-data--programming` |
| `## 💰 Finance & Money` | `#-finance--money` |
| `## ✈️ Travel & Culture` | `#-travel--culture` |
| `## 🌱 Personal Development` | `#-personal-development` |
| `## 💪 Health & Fitness` | `#-health--fitness` |
| `## ❤️ Relationships, Life & Family` | `#-relationships-life--family` |

**Rules:**
- Lowercase all text
- Remove emoji symbols (they become empty)
- Replace spaces with dashes
- Remove special characters except dashes
- Keep ampersands (&)

### Arrow Styling
Use consistent arrow styling for navigation:
- Forward: `[View →](path)` - Use for "go to content" links
- Back: `[← Previous](path)` - Use for navigation back
- Both: `[← Prev](path) | [Next →](path)` - Use for bi-directional nav

## Table Formatting Guidelines

### Weekly Navigation Table
```markdown
| Week | Date Range | Quick Summary | Link |
|------|------------|---------------|------|
| Week 01 | Jan 06 - Jan 12 | Getting started with the learning journal | [View →](weeks/2026/week-01/README.md) |
```

**Column Guidelines:**

1. **Week Column**
   - Format: `Week XX` (two digits)
   - Leading zeros for weeks 1-9

2. **Date Range Column**
   - Format: `Mon DD - Mon DD`
   - Use 3-letter month abbreviations
   - Include spaces around dash
   - Use two-digit days (e.g., 06 not 6)

3. **Quick Summary Column**
   - Extract from "Week at a Glance"
   - Maximum 60 characters
   - Remove markdown formatting
   - Keep it descriptive and engaging

4. **Link Column**
   - Format: `[View →](path/to/file.md)`
   - Always use `View →` as link text
   - Use relative path from README.md

### Alignment
Maintain column alignment in source for readability:
```markdown
| Week    | Date Range       | Quick Summary           | Link          |
|---------|------------------|-------------------------|---------------|
| Week 01 | Jan 06 - Jan 12  | Summary text here       | [View →](path)|
| Week 02 | Jan 13 - Jan 19  | Another summary         | [View →](path)|
```

While alignment doesn't affect rendering, it improves source readability.

## Year Boundary Handling

### Starting a New Year
When the first week of a new year is added:

1. **Add New Year Section**
```markdown
## 📅 Navigate by Week

### 2027  ← Add new year header

| Week | Date Range | Quick Summary | Link |
|------|------------|---------------|------|
| Week 01 | Jan 05 - Jan 11 | First week of 2027 | [View →](weeks/2027/week-01/README.md) |

### 2026  ← Existing year remains

| Week | Date Range | Quick Summary | Link |
|------|------------|---------------|------|
| Week 01 | Jan 06 - Jan 12 | Getting started | [View →](weeks/2026/week-01/README.md) |
| Week 02 | Jan 13 - Jan 19 | Continuing growth | [View →](weeks/2026/week-02/README.md) |
```

2. **Update Progress Tracker**
- "Started" date stays as original (January 2026)
- "Total Weeks" continues accumulating across years
- "Current Streak" may reset if gap between years

3. **Maintain Topic Links**
- Continue adding new weeks chronologically to topic sections
- Links will now point to new year folders: `weeks/2027/week-XX/`

## Common Scenarios

### Scenario 1: Adding Week 03 (Sequential)
**Current State**: Weeks 01 and 02 exist
**Action:**
1. Add Week 03 row to table
2. Add Week 03 links to all relevant topic sections
3. Update Progress Tracker:
   - Total Weeks: 2 → 3
   - Current Streak: 2 → 3

### Scenario 2: Adding Week After a Gap
**Current State**: Weeks 01 and 02 exist, adding Week 04 (Week 03 skipped)
**Action:**
1. Add Week 04 row to table (note the gap)
2. Add Week 04 links to relevant topic sections
3. Update Progress Tracker:
   - Total Weeks: 2 → 3 (only count existing weeks)
   - Current Streak: Reset to 1 (gap breaks streak)

### Scenario 3: Backfilling a Missed Week
**Current State**: Weeks 01 and 04 exist, adding Week 02 retroactively
**Action:**
1. Insert Week 02 row between Week 01 and Week 04 in table
2. Insert Week 02 links in proper chronological position in topics
3. Update Progress Tracker:
   - Total Weeks: 2 → 3
   - Current Streak: Recalculate based on continuity

### Scenario 4: First Week of New Year
**Current State**: 2026 complete with 52 weeks, adding 2027 Week 01
**Action:**
1. Create new year section (### 2027) above 2026 section
2. Add Week 01 of 2027 to new table
3. Continue adding to topic sections chronologically
4. Update Progress Tracker:
   - Total Weeks: 52 → 53
   - Started: Remains "January 2026"
   - Current Streak: Maintain or reset based on gap

## Error Prevention

### Common Mistakes to Avoid

❌ **Incorrect Week Number Format**
- Wrong: `Week 3` or `Week 3,` or `week-03`
- Correct: `Week 03`

❌ **Inconsistent Date Format**
- Wrong: `January 6 - January 12` or `1/6 - 1/12`
- Correct: `Jan 06 - Jan 12`

❌ **Broken Links**
- Wrong: `[View →](weeks/2026/week-3/README.md)` (missing leading zero)
- Wrong: `[View →](weeks/2026/week-03/readme.md)` (wrong case)
- Correct: `[View →](weeks/2026/week-03/README.md)`

❌ **Incorrect Anchor Format**
- Wrong: `#AI-Data-Programming` (includes emoji)
- Wrong: `#ai-data-&-programming` (wrong handling of &)
- Correct: `#-ai-data--programming`

❌ **Forgetting Progress Tracker**
- Always update Total Weeks and Current Streak
- Don't leave old values after adding weeks

❌ **Misaligned Table**
- Ensure pipes (|) align in each row
- Verify header separator row matches columns

### Validation Checklist

Before completing README update:
- [ ] New week row added to navigation table
- [ ] Week number uses two-digit format with leading zero
- [ ] Date range uses correct abbreviated format
- [ ] Summary is concise and descriptive
- [ ] Link path is correct (verify week number in path)
- [ ] Topic sections updated for all relevant topics
- [ ] Topic links use correct anchor format
- [ ] Progress Tracker "Total Weeks" incremented
- [ ] Progress Tracker "Current Streak" updated correctly
- [ ] All links tested (at least verify paths exist)
- [ ] Table formatting is consistent
- [ ] No broken or missing links

## Integration with Other Skills

### With datetime.skill.md
- Use datetime.skill to verify week numbers and date ranges
- Ensure consistency between README and weekly file dates

### With content-format.skill.md
- Apply formatting standards to summary text
- Ensure consistent emoji and styling usage

### With weekly-content.skill.md
- Verify weekly content exists before adding links
- Check that weekly file structure matches expectations

### With topic-navigator.skill.md
- Coordinate topic section updates
- Ensure topic categorization is consistent

## Quick Reference

### Update Sequence (Adding New Week)
1. ✓ Extract info from new weekly README
2. ✓ Add row to weekly navigation table
3. ✓ Update relevant topic section links
4. ✓ Increment "Total Weeks Documented"
5. ✓ Update "Current Streak" (check for gaps)
6. ✓ Verify all links are correct
7. ✓ Check table formatting

### Date Format Quick Guide
- **Weekly README Title**: `Week 01, 2026 (January 17 - January 23)`
- **Navigation Table**: `Jan 17 - Jan 23`
- **Year Header**: `### 2026`

### Link Format Quick Guide
- **Weekly Navigation**: `[View →](weeks/2026/week-01/README.md)`
- **Topic Link**: `[Week 01 - Topic Name](weeks/2026/week-01/README.md#-topic-anchor)`
- **Internal Doc**: `[USAGE_GUIDE.md](USAGE_GUIDE.md)`

---

**Skill Version**: 1.0  
**Last Updated**: 2026-01-17  
**Primary File**: `/README.md`

*This skill ensures the main README.md stays synchronized with weekly content additions, maintaining a consistent and navigable structure for the Learn In Public repository.*
