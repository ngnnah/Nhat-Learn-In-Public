# VSCode Copilot Customization Primer

Stop repeating yourself to AI. Configure once, inherit everywhere.

## The Problem

You keep telling AI the same things: "Use TypeScript," "Never commit secrets," "Follow our testing patterns." Every. Single. Chat.

## The Solution

Two mechanisms that provide persistent context:

1. **Custom Instructions** — Always-on rules (security, conventions, standards)
2. **Agent Skills** — On-demand expertise for specific tasks (testing, migrations, debugging)

## Where Files Live

```
.github/                           ← SINGLE SOURCE OF TRUTH
  ├── copilot-instructions.md      # Your always-on rules
  └── skills/                      # Your on-demand skills
      ├── testing/
      └── debugging/

.claude/                           ← COMPATIBILITY LAYER (symlinks)
  ├── CLAUDE.md        → points to .github/copilot-instructions.md
  └── skills/          → points to .github/skills/
```

**Why this structure?**
- `.github/` = VSCode native, team-standard location
- `.claude/` = Symlinks for Claude Code compatibility
- Edit once in `.github/`, both tools see changes
- No duplication, no sync issues

## Custom Instructions: Always-On Rules

What goes in `.github/copilot-instructions.md`:

**Security** (non-negotiable):
```markdown
- NEVER commit .env files, API keys, or secrets
- ALWAYS verify .gitignore before commits
- ALWAYS use environment variables for credentials
```

**Your Identity** (so AI uses correct accounts):
```markdown
## GitHub: username/YourUsername
## Docker Hub: username in ~/.env as DOCKER_HUB_USER
```

**Code Standards** (your team's conventions):
```markdown
## Python: Type hints, PEP 8, Black formatter, 100 char max
## TypeScript: Strict mode, explicit types, ESLint
## Error Handling: Specific exceptions with context
```

## Agent Skills: On-Demand Expertise

Skills are **folders** in `.github/skills/` containing:
- `SKILL.md` with instructions
- Optional scripts, templates, examples

**Key difference from instructions:**

| Aspect      | Instructions                     | Skills                          |
| ----------- | -------------------------------- | ------------------------------- |
| **Loading** | Always (every chat)              | On-demand (when task matches)   |
| **Use For** | Standards used >80% of the time  | Specific tasks <20% of the time |
| **Content** | Rules, conventions, patterns     | Procedures, scripts, checklists |
| **Tokens**  | Always in context                | Only when activated             |

## Setting Up Symlinks for Claude Compatibility

To make Claude Code work with the same files as VSCode Copilot:

```bash
# One-time setup in your project root
mkdir -p .claude
ln -sf ../.github/copilot-instructions.md .claude/CLAUDE.md
ln -sf ../.github/skills .claude/skills
```

**What this does:**
- Creates symbolic links (pointers) from `.claude/` to `.github/`
- Edit files in `.github/`, both VSCode and Claude see changes
- No file duplication, no sync issues
- Both tools stay in sync automatically

## Creating a Skill

Basic structure:

```
.github/skills/testing/
├── SKILL.md
└── test-template.js
```

**SKILL.md format:**
```markdown
---
name: testing
description: E2E testing with Playwright
---

# Web Testing

## When to Use
Testing UI, user flows, integration

## Procedure
1. Use template: [test-template.js](./test-template.js)
2. Run: `npm run test:e2e`
3. Use data-testid selectors

## Example
```js
test('login flow', async ({ page }) => {
  await page.goto('/login');
  await page.fill('[data-testid="email"]', 'test@example.com');
  await expect(page).toHaveURL('/dashboard');
});
```
```

## Key Patterns

**Compounding Knowledge:**
```
Mistake → Fix → Add to instructions → Never happens again
```
Each fix compounds into institutional knowledge.

**One Task, One Chat:**
Research shows 39% performance drop when mixing topics. Start fresh chats for new tasks.

**The <20% Rule:**
If something applies to <20% of your chats, make it a skill. Otherwise, add it to instructions.

## Common Mistakes

1. **Using `.agents/` or custom locations** — Neither VSCode nor Claude recognizes them
2. **Vague instructions** — "Write good code" → "Use type hints, PEP 8, explicit errors"
3. **Too many always-on rules** — <20% usage? Make it a skill
4. **Long chats** — Performance drops 39% when mixing topics. Start fresh chats
5. **No examples** — Always include working code in skills

## Quick Start

```bash
# 1. Create structure
mkdir -p .github/skills
touch .github/copilot-instructions.md

# 2. Add Claude compatibility
mkdir -p .claude
ln -sf ../.github/copilot-instructions.md .claude/CLAUDE.md
ln -sf ../.github/skills .claude/skills

# 3. Add your rules to .github/copilot-instructions.md
# 4. Create skills in .github/skills/
```

## TL;DR

- **Use `.github/` as single source** — Add `.claude/` symlinks for compatibility
- **Instructions = always-on** — Security, standards, conventions (>80% of chats)
- **Skills = on-demand** — Testing, debugging, migrations (<20% of chats)
- **Edit once, both tools see changes** — No duplication via symlinks
- **One task per chat** — Fresh context prevents 39% performance drop
- **Be specific** — "Use type hints" beats "write good code"

## Why Symlinks Matter

**The Problem:**
- VSCode Copilot reads from `.github/copilot-instructions.md`
- Claude Code reads from `.claude/CLAUDE.md`
- Without symlinks, you maintain two copies (sync nightmare)

**The Solution:**
```bash
ln -sf ../.github/copilot-instructions.md .claude/CLAUDE.md
```

Now `.claude/CLAUDE.md` is just a **pointer** to `.github/copilot-instructions.md`. Edit one file, both tools see it.

**Symlink Benefits:**
- ✅ Single source of truth in `.github/`
- ✅ No duplicate files to keep in sync
- ✅ Team-standard location (`.github/` already used for Actions)
- ✅ Both VSCode and Claude work seamlessly

## Learn More

- [VSCode Copilot Docs](https://code.visualstudio.com/docs/copilot/customization/overview)
- [Agent Skills Spec](https://agentskills.io/)
- [Context Rot Research](https://research.trychroma.com/context-rot)

[← Back to Week 02](README.md)