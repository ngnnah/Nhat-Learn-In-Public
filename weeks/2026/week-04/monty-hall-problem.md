# Monty Hall Problem: Why Switching Wins

> From [MITx 6.431x (Probability - The Science of Uncertainty and Data)](../week-02/probability-models-axioms.md) — Week 2

## The Classic Setup

Switching doubles your chance to win in the classic Monty Hall setup: staying wins with probability **1/3**, switching wins with probability **2/3**.

### Three-Door Version (Quick Recap)

- You pick 1 of 3 doors: your chosen door has a **1/3 chance** of hiding the prize, the other two doors together have **2/3 chance**.
- The host knows where the prize is and always opens a different door that has a goat, never the prize.
- When one goat door is opened, that full 2/3 probability "concentrates" on the single remaining unopened door, so **switching hits the prize with probability 2/3**.

---

## The 1000-Door Intuition

The three-door scenario can feel counterintuitive, but scaling it up makes the logic crystal clear.

### Step 1: You Pick One Door

- Imagine 1000 doors instead of 3.
- You pick 1 door. Chance you picked the prize: **1/1000**.
- Chance the prize is behind one of the other 999 doors: **999/1000**.

### Step 2: The Host Opens 998 Doors

The host, who **knows where the prize is**, opens 998 of the other doors—all showing goats—leaving only:
- Your original door
- One other unopened door

### Why This Matters: The Host's Behavior is Not Random

The host is constrained by knowledge:
- **If your original choice was wrong** (probability 999/1000): The host must avoid the 1 correct door and open the other 998 goats.
- **If your original choice was right** (probability 1/1000): The host can open any 998 of the remaining 999 goat doors.

### The Probabilities Don't Reset to 50-50

After the host opens 998 doors, many people think the two remaining doors each have a 50% chance. **This is wrong.**

- **Your original door** is still right with probability **1/1000**.
- **The other remaining door** carries the entire **999/1000** "mass" of all the doors you didn't pick, because the host intentionally stripped away all the losing ones and left the only possible winner among them closed.

### Final Probabilities with 1000 Doors

| Strategy | Win Probability |
|----------|----------------|
| Staying  | 1/1000         |
| Switching| 999/1000       |

---

## The Key Insight

This extreme case makes the asymmetry obvious:

> You almost certainly picked a loser at the start. The host's selective reveal effectively hands you the big combined probability sitting in the "not-your-door" group. **Switching is just collecting that big group probability into the one door the host left closed.**

The same logic applies to the 3-door version—it's just less dramatic because 2/3 vs. 1/3 doesn't *feel* as overwhelming as 999/1000 vs. 1/1000.

---

[← Back to Week 04](README.md)
