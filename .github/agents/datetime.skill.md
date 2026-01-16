# DateTime Skill

## Skill Purpose
Provides accurate date and time handling for the Learn In Public repository, ensuring consistent week numbering, date ranges, and temporal calculations.

## Key Information

### Week 1 Reference Point
- **Week 1 of 2026 starts**: Friday, January 17, 2026 (2026-01-17)
- **Week 1 date range**: January 17, 2026 - January 23, 2026
- **Week numbering**: Resets to 01 at the start of each calendar year

### Date Format Standards
- **ISO 8601 Format**: `YYYY-MM-DD` (e.g., 2026-01-17)
- **Display Format**: `Month DD - Month DD` (e.g., January 17 - January 23)
- **Year Format**: Four-digit year (e.g., 2026)
- **Week Format**: Two-digit week number with leading zero (e.g., week-01, week-02)

## Core Functions

### 1. Calculate Week Number
Given any date, determine the corresponding week number for the learning journal.

**Rules:**
- Week 1 of 2026 starts on 2026-01-17 (Friday)
- Each week spans exactly 7 days
- Week numbering is sequential within a year
- Week numbers reset to 01 on January 1st of each year

**Examples:**
- 2026-01-17 (Fri) → Week 01
- 2026-01-24 (Fri) → Week 02
- 2026-01-31 (Fri) → Week 03
- 2026-12-31 → Week 50 (approximately, depending on year structure)

### 2. Calculate Date Range for a Week
Given a week number and year, determine the start and end dates.

**Formula:**
```
Week 1 starts: 2026-01-17
Week N starts: 2026-01-17 + ((N - 1) × 7 days)
Week N ends: Week N start + 6 days
```

**Examples:**
- Week 01: January 17 - January 23, 2026
- Week 02: January 24 - January 30, 2026
- Week 03: January 31 - February 06, 2026

### 3. Determine Current Week
Based on today's date, identify the current week number.

**Current Date**: 2026-01-17 (provided in requirements)
**Current Week**: Week 01

### 4. Format Dates for Display
Convert dates between formats for different use cases.

**Input**: `2026-01-17` to `2026-01-23`
**Output**: `January 17 - January 23`

**Month Abbreviations** (use full month names):
- January, February, March, April, May, June
- July, August, September, October, November, December

### 5. Validate Date Ranges
Ensure date ranges are exactly 7 days and don't have gaps or overlaps.

**Validation Rules:**
- Each week must span exactly 7 days
- No gaps between consecutive weeks
- No overlap between consecutive weeks
- Week ranges should align with the reference point (Week 1: 2026-01-17)

## Usage Patterns

### When Creating a New Week Entry
```markdown
# Week 01, 2026 (January 17 - January 23)
```

Steps:
1. Determine current date
2. Calculate week number from reference point (2026-01-17 = Week 01)
3. Calculate date range for that week
4. Format as: "Week XX, YYYY (Month DD - Month DD)"

### When Updating README Navigation Table
```markdown
| Week 01 | Jan 17 - Jan 23 | Summary text | [View →](weeks/2026/week-01/README.md) |
```

Steps:
1. Use abbreviated month names (Jan, Feb, Mar, etc.)
2. Format: `Mon DD - Mon DD`
3. Include correct week number (two digits with leading zero)

### When Planning Future Weeks
Calculate future week dates based on reference point:

```
Week 01: Jan 17 - Jan 23, 2026
Week 02: Jan 24 - Jan 30, 2026
Week 03: Jan 31 - Feb 06, 2026
Week 04: Feb 07 - Feb 13, 2026
Week 05: Feb 14 - Feb 20, 2026
...
```

## Edge Cases

### Year Boundaries
When a week spans two calendar years:
- Assign the week to the year in which most days fall
- If equal (e.g., 3 days in each year), assign to the new year
- Example: December 29, 2026 - January 04, 2027 → Week 52 of 2026 (if applicable)

### Leap Years
- 2026 is NOT a leap year (February has 28 days)
- 2028 IS a leap year (February has 29 days)
- Adjust calculations accordingly for February dates

### Week 1 Starting Mid-Month
- Week 1 of 2026 starts on January 17 (Friday)
- This is by design for the learning journal
- Days before Week 1 start (Jan 1-16) are not part of any week in this system

## Date Calculation Examples

### Example 1: What week is February 14, 2026?
```
Reference: Week 1 starts on 2026-01-17
Target date: 2026-02-14

Days from Week 1 start: (Feb 14 - Jan 17) = 28 days
Week number: 28 ÷ 7 = 4 weeks later
Answer: Week 05 (Week 1 + 4 = Week 5)

Week 05 range: Feb 14 - Feb 20, 2026
```

### Example 2: What are the dates for Week 10?
```
Reference: Week 1 starts on 2026-01-17
Target: Week 10

Days to add: (10 - 1) × 7 = 63 days
Start date: 2026-01-17 + 63 days = 2026-03-21
End date: 2026-03-21 + 6 days = 2026-03-27

Answer: March 21 - March 27, 2026
```

### Example 3: Is today (2026-01-17) in Week 01?
```
Today: 2026-01-17
Week 1 starts: 2026-01-17
Week 1 ends: 2026-01-23

2026-01-17 is >= 2026-01-17 AND <= 2026-01-23
Answer: YES, today is the first day of Week 01
```

## Integration with Other Skills

### With content-format.skill.md
- Provide correctly formatted dates for markdown headers
- Ensure date displays are consistent and readable

### With readme-updater.skill.md
- Supply accurate week numbers for table updates
- Provide date ranges for navigation entries

### With weekly-content.skill.md
- Calculate correct week number for new content
- Determine proper date range for weekly headers

## Best Practices

### Always Use Reference Point
- Don't guess or estimate week numbers
- Always calculate from the Week 1 reference (2026-01-17)
- Validate calculations against the formula

### Double-Check Calculations
- Verify day count is exactly 7 for each week
- Ensure no gaps between consecutive weeks
- Check month boundaries are handled correctly

### Consistent Formatting
- Use two-digit week numbers (01, 02, not 1, 2)
- Use full month names in weekly README headers
- Use abbreviated month names (3 letters) in navigation tables
- Always include the year in week titles

### Document Assumptions
- If Week 1 starting date changes in future years, update this skill
- If week numbering system changes, document the new rules
- Keep this skill file as the single source of truth for date handling

## Quick Reference Table

### Month Name Mappings
| Number | Full Name | Abbreviated |
|--------|-----------|-------------|
| 01 | January | Jan |
| 02 | February | Feb |
| 03 | March | Mar |
| 04 | April | Apr |
| 05 | May | May |
| 06 | June | Jun |
| 07 | July | Jul |
| 08 | August | Aug |
| 09 | September | Sep |
| 10 | October | Oct |
| 11 | November | Nov |
| 12 | December | Dec |

### 2026 Week Overview (First 12 Weeks)
| Week # | Start Date | End Date | Display Format |
|--------|------------|----------|----------------|
| 01 | 2026-01-17 | 2026-01-23 | Jan 17 - Jan 23 |
| 02 | 2026-01-24 | 2026-01-30 | Jan 24 - Jan 30 |
| 03 | 2026-01-31 | 2026-02-06 | Jan 31 - Feb 06 |
| 04 | 2026-02-07 | 2026-02-13 | Feb 07 - Feb 13 |
| 05 | 2026-02-14 | 2026-02-20 | Feb 14 - Feb 20 |
| 06 | 2026-02-21 | 2026-02-27 | Feb 21 - Feb 27 |
| 07 | 2026-02-28 | 2026-03-06 | Feb 28 - Mar 06 |
| 08 | 2026-03-07 | 2026-03-13 | Mar 07 - Mar 13 |
| 09 | 2026-03-14 | 2026-03-20 | Mar 14 - Mar 20 |
| 10 | 2026-03-21 | 2026-03-27 | Mar 21 - Mar 27 |
| 11 | 2026-03-28 | 2026-04-03 | Mar 28 - Apr 03 |
| 12 | 2026-04-04 | 2026-04-10 | Apr 04 - Apr 10 |

## Error Prevention

### Common Mistakes to Avoid
- ❌ Counting Week 1 as January 1-7 (Week 1 starts Jan 17)
- ❌ Using single-digit week numbers (use 01, not 1)
- ❌ Inconsistent date formats across files
- ❌ Weeks that are not exactly 7 days
- ❌ Gaps or overlaps between consecutive weeks

### Validation Checklist
- [ ] Week number is two digits with leading zero
- [ ] Date range spans exactly 7 days
- [ ] Dates align with Week 1 reference point (2026-01-17)
- [ ] Month names are spelled correctly and consistently
- [ ] Year is included in all weekly titles
- [ ] Format matches existing weeks in the repository

---

**Skill Version**: 1.0  
**Last Updated**: 2026-01-17  
**Reference Date**: Week 1 starts 2026-01-17 (Friday)

*This skill ensures all date and time calculations in the Learn In Public repository are accurate, consistent, and maintainable.*
