# VSCode Copilot Customization: AGENTS.md & Agent Skills

Stop repeating yourself to AI. Configure once, inherit everywhere.

## The Core Problem

AI assistants forget your conventions, security rules, and workflows between chats. You repeat the same instructions constantly.

**Solution**: Two mechanisms that provide persistent context:
- **Custom Instructions** (AGENTS.md) — Always-on standards and conventions
- **Agent Skills** (SKILL.md) — On-demand expertise for specific tasks

## Configuration Hierarchy

| LEVEL   | LOCATION                                                                                   | APPLIES TO        |
| ------- | ------------------------------------------------------------------------------------------ | ----------------- |
| Global  | `~/.claude/CLAUDE.md` or `~/Library/Application Support/Code/User/copilot-instructions.md` | All your projects |
| Project | `.github/copilot-instructions.md` ✅ **Standard location**                                  | This project      |
| Skills  | `.github/skills/*/SKILL.md` ✅ **Standard location**                                        | Specific tasks    |

**Key principle**: Use `.github/` as the single source of truth, add symlinks for tool compatibility.

## Custom Instructions: What Always Applies

Put these in global/project instructions files:

### 1. Security (Non-Negotiable)

```markdown
## SECURITY RULES (NEVER VIOLATE)
- NEVER commit .env files, API keys, or secrets
- ALWAYS verify .gitignore before commits
- ALWAYS use environment variables for credentials
```

### 2. Identity

```markdown
## GitHub Account
**ALWAYS** use **YourUsername** for all projects:
- SSH: `git@github.com:YourUsername/<repo>.git`

## Docker Hub
Already authenticated. Username in `~/.env` as `DOCKER_HUB_USER`
```

#### 3. Project Scaffolding Standards
: Use YourUsername for all repos
## Docker: Username in ~/.env as DOCKER_HUB_USER
```

### 3. Project Scaffoldingeholders
- `.gitignore` — Must include: .env, node_modules/, dist/
- `README.md` — Project overview

### Required Structure
project/
├── src/
├── tests/
├── docs/
├── .github/skills/
└── scripts/
```

#### 4. Language/Framework Conventions

```markdown
## Python: Type hints, PEP 8, Black formatter, max 100 chars
## Error Handling: Specific exceptions, context in messages
```

## Agent Skills: Task-Specific Expertise

### What Are Agent Skills?

Agent Skills are **folders** containing:
- A `SKILL.md` file with instructions
- Optional scripts, templates, or resources
- Everything needed for a specialized task

Unlike custom instructions that are always loaded, skills use **progressive disclosure**:
1. **Discovery**: Copilot sees only the skill's name and description
2. **Activation**: Full instructions load when the task matches
3. **Resources**: Additional files load only when referenced

### Agent Skills vs Custom Instructions

|             | SKILLS                                         | INSTRUCTIONS                                     |
| ----------- | ---------------------------------------------- | ------------------------------------------------ |
| **Content** | Instructions + scripts + examples              | Instructions only                                |
| **Loading** | On-demand                                      | Always                                           |
| **Use For** | Testing, debugging, migrations (<20% of chats) | Standards, conventions, security (>80% of chats) |
| **Tokens**  | Only when used                                 | Always in context                                |

## Creating Skills

### Standard Location Strategy

**Use `.github/` as your single source of truth:**

```
.github/
  ├── copilot-instructions.md    # Your always-on rules
  └── skills/                     # Your on-demand skills
      ├── checking-urls/
      ├── pdf-reader/
      └── skill-writer/
```

**Why `.github/`?**
- ✅ VSCode Copilot native support
- ✅ Agent Skills standard (agentskills.io)
- ✅ Clear team convention (`.github/` already used for Actions)
- ✅ Future-proof

### Add Claude Compatibility

Create symlinks so Claude Code sees the same content:

```bash
# One-time setup
mkdir -p .claude
ln -sf ../.github/copilot-instructions.md .claude/CLAUDE.md
ln -sf ../.github/skills .claude/skills
```

Now both tools read from `.github/` ✅

**Avoid these locations:**
- ❌ `.agents/skills/` — Neither tool recognizes
- ❌ `.claude/skills/` as primary — Creates divergence
- ❌ Custom locations — Breaks standards

### Anatomy of SKILL.md

```markdown
---
name: webapp-testing
description: E2E testing with Playwright for UI, user flows, integration scenarios
---

# Web Testing

## When to Use
Testing interfaces, workflows, responsive design, regression

## Procedure
1. Use template: [test-template.js](./test-template.js)
2. Run: `npm run test:e2e`
3. Use data-testid selectors
4. Keep tests independent

## Example
```js
test('login flow', async ({ page }) => {
  await page.goto('/login');
  await page.fill('[data-testid="email"]', 'test@example.com');
  await page.fill('[data-testid="password"]', 'pass');
  await expect(page).toHaveURL('/dashboard');
});
```
```

### Example 1: GitHub Actions Debugging Skill

```
.github/skills/gh-actions-debug/
├── SKILL.md
├── debug-checklist.md
└── examples/
    ├── failed-job.yml
    └── fixed-job.yml
```

## Example Skills

### GitHub Actions Debug
```
.github/skills/gh-actions-debug/
├── SKILL.md
└── examples/
```

Key checklist: Secrets accessible? Permissions set? Cache clear? Dependencies pinned?

### Database Migration
```
.github/skills/db-migration/
├── SKILL.md
├── migration-template.sql
└── rollback-template.sql
```

Always: timestamp naming, test locally, create rollback, backup prod, use transactions.

## Key Patterns

### Compounding Engineering
from pathlib import Path

SENSITIVE = {'.env', '.env.local', 'secrets.json', 'id_rsa'}

data = json.load(sys.stdin)
file_path = data.get('tool_input', {}).get('file_path', '')

if Path(file_path).name in SENSITIVE:
    print(f"BLOCKED: Access to {file_path} denied.", file=sys.stderr)
    sys.exit(2)  # Exit 2 = block and tell Claude why

sys.exit(0)
```

**Hook Exit Codes**:
- `0`: Allow operation
- `1`: Error (show to user)
- `2`: Block operation, tell AI why

## Language Server Protocol (LSP): Semantic Understanding

As of December 2025, Claude Code gained native LSP support—a **game-changer** for AI coding.

###Key Patterns

### Compounding Engineering
Anthropic updates their CLAUDE.md multiple times per week:
```
Mistake → Fix → Add to CLAUDE.md → Never happens again
```
Each fix compounds over time into institutional knowledge.

### One Task, One Chat
[Research shows 39% performance drop](https://arxiv.org/pdf/2505.06120) mixing topics. Use `/clear` liberally.

### Hooks = Deterministic Enforcement
Instructions are suggestions. Hooks always run. Exit codes: `0`=allow, `1`=error, `2`=block+explain.
mkdir -p ~/.claude
touch ~/.claude/CLAUDE.md
```

Add your security rules, identity, and project scaffolding standards.

### Step 2: Create Project Custom Instructions

In your project root:
```bCP: External Tools

MCP connects Claude to external services. **Use wisely**—consumes tokens.

**Rule**: One-off use? CLI is better. Repeated use? MCP shines.

**Top Servers**:
- Context7: Live docs (`npx @upstash/context7-mcp@latest`)
- GitHub: PRs/issues (`npx @modelcontextprotocol/server-github`)
- PostgreSQL: Queries (`npx @modelcontextprotocol/server-postgres`)
- Playwright: Testing (`npx @anthropic-ai/playwright-mcp`)

[76k+ more servers](https://github.com/punkpeye/awesome-mcp-servers)
### Pitfall 2: Overly Generic Instructions
**Problem**: Instructions too vague to be helpful  
**Solution**: Be specific. Instead of "write good code," say "use type hints, handle errors explicitly, follow PEP 8."

### Pitfall 3: Too Many Always-On Instructions
**Problem**: Token budget consumed by rarely-used rules  
**Solution**: Move infrequent tasks to Agent Skills. Use <20% rule: if used in <20% of conversations, make it a skill.

### Pitfall 4: Skills Without Clear Descriptions
**Problem**: AI doesn't know when to load the skill  
**Solution**: Write specific descriptions mentioning capabilities AND use cases: "Debug GitHub Actions workflows when CI/CD fails or needs optimization."

### Pitfall 5: No Rollback/Examples
**Problem**: Instructions unclear without context  
**Solution**: Include examples in skills. For migrations, include rollback scripts.

## Real-World Workflow Example

**Scenario**: You're building a React app and need to add a feature with tests.

1. **Start New Chat**: Fresh context  
2. **AI Loads Global Instructions**: Your React conventions, TypeScript rules  
3. **AI Loads Project Instructions**: Project architecture, component patterns  
4. **You Ask**: "Add a user profile page with avatar upload"  
5. **AI Detects**: No specific skill needed, uses instructions  
6. **Implements**: Creates component following your patterns  
7. **You Ask**: "Add tests for this component"  
8. **AI Activates*

## Quick Reference

| WHAT                 | WHERE                                   | LOADS     |
| -------------------- | --------------------------------------- | --------- |
| Global instructions  | `~/Library/.../copilot-instructions.md` | Always    |
| Project instructions | `.github/copilot-instructions.md`       | Always    |
| Project skills       | `.github/skills/*/SKILL.md`             | On-demand |
| Personal skills      | `~/.copilot/skills/*/SKILL.md`          | On-demand |

## Common Mistakes

1. **Using `.agents/` location**: Neither tool recognizes it ❌
2. **Context rot**: Long chats lose focus. Use `/clear`, start fresh chats
3. **Vague instructions**: "Write good code" → "Use type hints, PEP 8, explicit errors"
4. **Too many always-on rules**: <20% usage? Make it a skill
5. **Unclear skill descriptions**: Mention both capability AND use case
6. **No examples**: Always include working code samples

## TL;DR

- **Instructions**: Always-on standards (security, conventions)
- **Skills**: On-demand workflows (testing, migrations)
- **Locations**: Use `.github/` (VSCode) with `.claude/` symlinks (compatibility)
- **NOT `.agents/`**: Neither tool recognizes this location ❌
- **One task, one chat**: 39% perf hit when mixing topics
- **<20% rule**: Infrequent? Make it a skill
- **LSP**: 900x faster semantic navigation
- **MCP**: One-off? CLI. Repeated? MCP

## Tool Compatibility Matrix

| Location             | VSCode Copilot   | Claude Code      | Recommended   |
| -------------------- | ---------------- | ---------------- | ------------- |
| `.github/skills/`    | ✅ Native         | ⚠️ Via symlink    | **Best**      |
| `.claude/skills/`    | ⚠️ Legacy         | ✅ Native         | OK            |
| `.agents/skills/`    | ❌ Not recognized | ❌ Not recognized | **Avoid**     |
| `~/.copilot/skills/` | ✅ Personal       | ❌                | Personal only |
| `~/.claude/skills/`  | ❌                | ✅ Personal       | Personal only |

## Unified Setup: One Source, Two Pointers

### The Symlink Pattern

```bash
# 1. Create standard structure
mkdir -p .github/skills
touch .github/copilot-instructions.md

# 2. Add your skills
mv your-skill/ .github/skills/your-skill/

# 3. Create Claude compatibility layer
mkdir -p .claude
ln -sf ../.github/copilot-instructions.md .claude/CLAUDE.md
ln -sf ../.github/skills .claude/skills
```

### Result

```
.github/               ← SINGLE SOURCE OF TRUTH
  ├── copilot-instructions.md
  └── skills/
      ├── checking-urls/
      └── pdf-reader/

.claude/               ← COMPATIBILITY LAYER
  ├── CLAUDE.md       → points to .github/copilot-instructions.md
  └── skills/         → points to .github/skills/
```

**Benefits:**
- ✅ Edit once in `.github/`, both tools see changes
- ✅ No duplicate files
- ✅ No sync issues
- ✅ Standard compliant
- ✅ Team-friendly (everyone understands `.github/`)

## Migration Guide

### From .agents/ or .claude/ to Standard Location

```bash
# Step 1: Move to .github/ (standard location)
mkdir -p .github
mv .agents/skills .github/skills 2>/dev/null || mv .claude/skills .github/skills
mv AGENTS.md .github/copilot-instructions.md 2>/dev/null || mv .claude/CLAUDE.md .github/copilot-instructions.md

# Step 2: Create symlinks for Claude compatibility
mkdir -p .claude
ln -sf ../.github/copilot-instructions.md .claude/CLAUDE.md
ln -sf ../.github/skills .claude/skills

# Step 3: Verify setup
ls -la .github/skills/    # Should show your skills
ls -la .claude/           # Should show symlinks

# Step 4: Test
# Ask in VSCode/Claude: "What skills are available?"
# Both should now list your skills ✅

# Step 5: Cleanup (optional)
rm -rf .agents
```

**Why this works:**
- `.github/` = your actual files
- `.claude/` = pointers to `.github/`
- Edit once, both tools see it
- No duplication, no sync issues

See [.agents/ANALYSIS.md](/.agents/ANALYSIS.md) for detailed comparison.

## Resources

**Official**:
- [VSCode Copilot Docs](https://code.visualstudio.com/docs/copilot/customization/overview)
- [Agent Skills Spec](https://agentskills.io/)
- [Claude Best Practices](https://www.anthropic.com/engineering/claude-code-best-practices)

**Examples**:
- [github/awesome-copilot](https://github.com/github/awesome-copilot)
- [anthropics/skills](https://github.com/anthropics/skills)
- [TheDecipherist/claude-code-mastery](https://github.com/TheDecipherist/claude-code-mastery)

**Research**:
- [Context Rot](https://research.trychroma.com/context-rot)
- [Multi-Turn Performance](https://arxiv.org/pdf/2505.06120