# Content Format Skill

## Skill Purpose
Provides guidelines and standards for formatting markdown content in the Learn In Public repository to ensure it is concise, visually appealing, interesting, and optimized for both reference use and public sharing.

## Core Principles

### 1. Conciseness with Completeness
- **Be Brief**: Use clear, direct language without unnecessary verbosity
- **Be Complete**: Include all essential information for understanding
- **Balance**: Don't sacrifice clarity for brevity
- **Target**: Each weekly topic section should be 100-300 words

### 2. Visual Appeal
- **Use Emojis Strategically**: Enhance navigation and create visual anchors
- **Consistent Formatting**: Maintain uniform structure throughout
- **White Space**: Use blank lines generously for readability
- **Hierarchy**: Clear heading levels (H1 → H2 → H3) for scanability

### 3. Engagement & Interest
- **Active Voice**: Write in active, engaging voice
- **Personal Touch**: Include reflections and personal insights
- **Practical Focus**: Emphasize actionable learnings and applications
- **Story Elements**: When appropriate, include context and narrative

### 4. Reference Optimization
- **Structured Information**: Use lists, tables, and sections consistently
- **Keywords**: Include searchable terms and concepts
- **Links**: Provide references to resources and related content
- **Future-Proof**: Write for "future you" who needs to recall this learning

## Markdown Standards

### Document Structure
```markdown
# Main Title (H1) - One per document
> Quote or brief description (blockquote for emphasis)

---

## Section Title (H2) - Major sections

### Subsection Title (H3) - Detailed breakdowns

**Bold text** for emphasis
*Italic text* for subtle emphasis
`code or technical terms` in backticks

- Bullet points for lists
1. Numbered lists for sequences

[Link text](URL) for references

---

## Next Section
```

### Header Guidelines
- **H1 (#)**: Document title only - ONE per file
- **H2 (##)**: Major topic sections (AI, Finance, Travel, etc.)
- **H3 (###)**: Subsections (What I Learned, Resources, etc.)
- **H4 (####)**: Rarely needed - only for deep nesting

### Emoji Usage Guide

#### Topic Category Emojis (Consistent)
- 💻 AI, Data & Programming
- 💰 Finance & Money
- ✈️ Travel & Culture
- 🌱 Personal Development
- 💪 Health & Fitness
- ❤️ Relationships, Life & Family

#### Subsection Emojis (Consistent)
- 📝 What I Learned
- 🔨 Projects & Practice / Actions Taken
- 📚 Resources
- 💭 Reflections
- 🎉 Key Wins
- 🤔 Challenges Faced
- 👀 Looking Ahead

#### Navigation & Meta Emojis
- 📅 Date/Time related
- 🔗 Links and navigation
- 🎯 Goals and targets
- 📊 Statistics and tracking
- 🔥 Streaks and consistency
- ⭐ Highlights and featured content

### List Formatting

#### Bullet Lists (Unordered)
Use for non-sequential items:
```markdown
- First item
- Second item
  - Nested item (2-space indent)
  - Another nested item
- Third item
```

#### Numbered Lists (Ordered)
Use for steps, sequences, or ranked items:
```markdown
1. First step
2. Second step
3. Third step
```

#### Definition-Style Lists
Use for key-value pairs:
```markdown
**Term**: Definition or explanation
**Another Term**: Another explanation
```

### Table Formatting

#### Navigation Tables
```markdown
| Week | Date Range | Quick Summary | Link |
|------|------------|---------------|------|
| Week 01 | Jan 17 - Jan 23 | Summary text | [View →](path/to/file.md) |
```

**Guidelines:**
- Use pipes (|) to separate columns
- Include header row with dashes for separation
- Align columns for readability in source
- Keep summary column concise (< 50 characters)

#### Data Tables
```markdown
| Category | Value | Notes |
|----------|-------|-------|
| Item 1 | 100 | Description |
| Item 2 | 200 | Description |
```

### Blockquotes for Emphasis

#### Reflections
```markdown
> Personal insight or reflection goes here. Use blockquotes to make reflections stand out visually and indicate personal voice.
```

#### Key Quotes
```markdown
> "Direct quote from a resource or notable saying."  
> — Author Name
```

#### Call-outs
```markdown
> **Note**: Important information that needs to stand out
```

## Content Patterns

### Weekly Entry Title
```markdown
# Week XX, YYYY (Month DD - Month DD)

> **Week at a Glance**: One to two sentence summary capturing the essence of the week's learning focus and achievements.
```

### Topic Section Structure
```markdown
## 💻 AI, Data & Programming

### What I Learned
- Specific concept or skill learned
- Another learning with context
- Third item with practical application

### Projects & Practice
- Actual project or activity undertaken
- Hands-on practice or exercise completed
- Real-world application or experiment

### Resources
- [Resource Title](URL) - Brief description
- Book: "Title" by Author - Key takeaway
- Course/Tutorial: Platform/Source - What it covered

### Reflections
> Personal insight about the learning experience. What surprised you? What was challenging? How will this knowledge be applied? Keep it authentic and thoughtful.
```

### Section Guidelines

#### "What I Learned" Section
- **Focus**: New concepts, facts, insights, skills acquired
- **Format**: Bullet points, 3-7 items ideal
- **Style**: Concise statements, specific rather than vague
- **Example**: ✅ "Learned how to use React hooks for state management" vs ❌ "Studied React"

#### "Projects & Practice" Section
- **Focus**: Actual activities, hands-on work, practical application
- **Format**: Bullet points or brief paragraphs
- **Style**: Action-oriented, specific deliverables
- **Example**: ✅ "Built a weather app using OpenWeather API" vs ❌ "Worked on coding"

#### "Resources" Section
- **Focus**: Specific materials that aided learning
- **Format**: Links with brief descriptions
- **Style**: Include resource type (book, course, article, video)
- **Example**: `[Markdown Guide](https://example.com) - Comprehensive reference for markdown syntax`

#### "Reflections" Section
- **Focus**: Personal insights, feelings, meta-learning
- **Format**: Blockquote for visual distinction
- **Style**: Thoughtful, authentic, forward-looking
- **Length**: 1-3 sentences, meaningful not filler

### Week Summary Section
```markdown
## 📊 Week Summary

### Key Wins 🎉
1. Most significant achievement of the week
2. Second notable success
3. Third win worth celebrating

### Challenges Faced 🤔
1. Main challenge encountered and how you addressed it
2. Another obstacle and lessons learned

### Looking Ahead 👀
- What you plan to focus on next week
- Areas for continued growth
- Anticipated challenges or opportunities
```

## Styling for Readability

### Spacing Guidelines
- **Between sections**: 2 blank lines (one `---` separator plus blank lines)
- **Between subsections**: 1 blank line
- **Between list items**: No blank lines (unless grouping)
- **Around code blocks**: 1 blank line before and after

### Line Length
- **Ideal**: 80-100 characters per line for paragraphs
- **Maximum**: 120 characters before breaking to new line
- **Lists**: Can exceed for readability
- **Links**: Keep on single line regardless of length

### Emphasis Usage
- **Bold (`**text**`)**: Key terms, subsection labels, important concepts
- **Italic (`*text*`)**: Subtle emphasis, titles when inline
- **Code (`` `text` ``)**: Technical terms, commands, code snippets
- **Blockquote (`> text`)**: Reflections, quotes, call-outs

## Content Quality Guidelines

### Writing Style

#### Do's ✅
- Use active voice: "I built a website" not "A website was built"
- Be specific: "Completed 3 coding exercises on algorithms" not "Did some coding"
- Include context: "Learned Redux for state management in React apps"
- Show progress: "Improved from 50% to 75% test coverage"
- Be authentic: Share both successes and struggles

#### Don'ts ❌
- Avoid vague statements: "Learned stuff about programming"
- Don't omit details: "Read a book" (what book? what did you learn?)
- Skip empty sections: Better to omit a section than leave it with just "-"
- Avoid jargon without context: Define terms that might be unfamiliar
- Don't make it a task list: Focus on learning, not just completion

### Engagement Techniques

#### Hook with Summaries
Start each week with a compelling "Week at a Glance" that makes readers want to explore more.

**Example:**
> **Week at a Glance**: Dove deep into machine learning fundamentals, built my first neural network, and finally understood the math behind gradient descent. Also discovered the connection between compound interest and habit formation.

#### Use Concrete Examples
Instead of: "Learned about APIs"
Write: "Built a REST API that serves weather data from OpenWeather API, handling authentication and rate limiting"

#### Include Numbers and Metrics
- "Completed 15 coding challenges"
- "Read 3 chapters on behavioral economics"
- "Ran 12 miles total this week"

#### Tell Mini-Stories
For reflections, briefly share the journey:
> Started the week frustrated with async JavaScript, but after building three different projects with Promises and async/await, it finally clicked. The key was seeing it in action rather than just reading about it.

### SEO and Searchability

#### Use Clear Keywords
Include specific terms people might search for:
- Library/framework names: React, Python, TensorFlow
- Concepts: "machine learning", "financial independence", "meditation"
- Tools: VS Code, Git, Docker
- Methodologies: Agile, TDD, FIRE

#### Create Rich Context
Don't just list topics—provide context that helps search and recall:
- Instead of: "Docker"
- Write: "Docker containerization for creating reproducible development environments"

#### Link Generously
- Link to official documentation
- Link to helpful tutorials or articles
- Link to related weeks in your journal
- Link to resources that helped you

## Visual Enhancement

### Badges and Icons
For the main README, use badges to show status:
```markdown
[![Updates](https://img.shields.io/badge/Updates-Weekly-brightgreen)](URL)
[![Status](https://img.shields.io/badge/Status-Active-success)](URL)
```

### Horizontal Rules
Use `---` to separate major sections:
```markdown
## Section 1

Content here...

---

## Section 2

Content here...
```

### Code Blocks
For longer code snippets or command examples:
````markdown
```python
def example_function():
    return "This is formatted code"
```
````

For inline commands:
```markdown
Run `npm install` to install dependencies.
```

## Templates for Common Elements

### Link with Description
```markdown
[Resource Title](https://example.com) - Brief description of what this resource offers and why it's valuable
```

### Project/Activity Entry
```markdown
**Project Name**: Brief description of what you built or did, including technologies used and outcomes achieved
```

### Learning Point with Context
```markdown
- **Core Concept**: Explanation with practical application or example that grounds it in reality
```

### Reflection Format
```markdown
> Honest personal insight that captures both what you learned and how you felt about it. Include what worked well and what you'll do differently next time.
```

## Adaptation Guidelines

### For Different Audiences

#### Reference Use (For Future You)
- Include enough detail to jog memory
- Use specific technical terms
- Link to resources for deeper review
- Include context: "why" not just "what"

#### Public Sharing (For Internet Audience)
- Add brief explanations for jargon
- Make it interesting: show enthusiasm
- Include takeaways others can use
- Balance personal and universal insights

#### Quick Scanning (For Browsers)
- Use clear headers and structure
- Lead with most important info
- Use lists over paragraphs
- Make summaries count

### Content Length Guidelines

| Section Type | Ideal Length | Maximum |
|--------------|--------------|---------|
| Week Summary (at top) | 1-2 sentences | 3 sentences |
| What I Learned (per topic) | 3-5 bullets | 8 bullets |
| Projects & Practice | 2-4 items | 6 items |
| Resources | 2-5 links | 10 links |
| Reflections | 2-4 sentences | 1 paragraph |
| Weekly Summary | 5-8 total items | 12 items |

## Quality Checklist

Before finalizing any content, verify:

### Structure ✓
- [ ] Headers follow proper hierarchy (H1 → H2 → H3)
- [ ] Consistent emoji usage for sections
- [ ] Proper spacing between sections
- [ ] Navigation links are functional

### Content ✓
- [ ] Specific rather than vague
- [ ] Includes context and details
- [ ] Active voice predominates
- [ ] Personal insights are authentic
- [ ] Resources have descriptions

### Formatting ✓
- [ ] Markdown syntax is correct
- [ ] Links are properly formatted
- [ ] Lists are consistently styled
- [ ] Code terms use backticks
- [ ] Blockquotes are used appropriately

### Readability ✓
- [ ] Scannable structure with clear headers
- [ ] Visual hierarchy is clear
- [ ] White space aids readability
- [ ] Emoji enhance, don't distract
- [ ] Length is appropriate (concise but complete)

### Shareability ✓
- [ ] Interesting and engaging
- [ ] Accessible to external readers
- [ ] Includes valuable takeaways
- [ ] Professional yet personal
- [ ] Free of errors and typos

---

**Skill Version**: 1.0  
**Last Updated**: 2026-01-17  
**Purpose**: Ensure all content is concise, visually appealing, interesting, and optimized for reference and sharing

*This skill balances multiple goals: keeping content brief enough to maintain reader attention while being complete enough to be useful as reference, and making it both personally meaningful and publicly valuable.*
