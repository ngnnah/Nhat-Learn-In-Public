# Probability Models, Axioms, and Infinite Sets

> MITx 6.431x (Probability - The Science of Uncertainty and Data) — Week 1, Unit 1

## The Core Framework

### Sample Space (Ω)

The set of **all possible outcomes** of an experiment. Three flavors:

| Type | Description | Example |
|------|-------------|---------|
| Finite Discrete | Fixed number of outcomes | Coin flip, rolling a D6 |
| Infinite Discrete (Countable) | Outcomes can be listed 1, 2, 3... | Tosses until "Heads" |
| Continuous (Uncountable) | Dense outcomes, cannot be sequenced | Points in a unit square, time |

### Event (A)

Any subset of the sample space. If the outcome falls inside subset A, the event happened.

---

## The Three Axioms

| Axiom | Rule | Intuition |
|-------|------|-----------|
| Non-Negativity | P(A) ≥ 0 | Probabilities can't be negative |
| Normalization | P(Ω) = 1 | "Sanity check" — *something* must happen |
| Additivity | P(A ∪ B) = P(A) + P(B) | For disjoint events; extends to countable infinite sequences |

---

## The "Listability" Test (Countable vs Uncountable)

**Why does this matter?**

- **Countable (Infinite List)**: Like a line of people — you can point to 1st, 2nd, 3rd... Because you can sequence them, you can sum their probabilities.

- **Uncountable (Infinite Crowd)**: Like grains of sand — between any two, there are infinite others. Cannot be labeled 1, 2, 3...

### The 0 = 1 Paradox

If you try to apply Additivity to uncountable sets:
- Probability of a single point = 0
- Sum them: 0 + 0 + 0... = 0
- But total area = 1!

**Conclusion**: You cannot sum points in continuous space — you need integration (Measure Theory).

---

## The 4-Step Method

1. **Specify** Sample Space
2. **Specify** Probability Law
3. **Identify** Event of Interest
4. **Calculate**

---

## Geometric Series (The Calculator)

For infinite discrete problems:

$$\sum_{n=0}^{\infty} r^n = \frac{1}{1-r} \quad \text{(for } |r| < 1\text{)}$$

**Re-indexing Trick** (when sum starts at n=1):
1. Write out: r¹ + r² + r³...
2. Factor out r: r × (1 + r¹ + r²...)
3. Apply formula: r × 1/(1-r)

---

## Key Properties

| Property | Formula | Use |
|----------|---------|-----|
| Inclusion-Exclusion | P(A ∪ B) = P(A) + P(B) - P(A ∩ B) | Subtract overlap to avoid double-counting |
| Union Bound | P(A ∪ B) ≤ P(A) + P(B) | Quick upper-bound estimates |

---

## Conceptual Traps

| Question | Answer | Why |
|----------|--------|-----|
| Is uniform probability on all positive integers possible? | No | Summing constant c infinitely → 0 or ∞, violates normalization |
| Can we sum individual points to get area of unit square? | No | Points have prob 0; uncountable set can't use Additivity → 0 ≠ 1 |

---

[← Back to Week 02](README.md)
