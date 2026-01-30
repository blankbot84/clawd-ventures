---
name: opportunity-scanner
description: Autonomous micro-SaaS opportunity research and validation pipeline. Use when searching for business ideas, validating startup concepts, or running continuous opportunity discovery. Scans Reddit, Indie Hackers, Twitter for genuine gaps — not just complaints. Two-phase system with auto-roast: Sonnet discovers → Opus validates/kills via 7-section deep dive.
---

# Opportunity Scanner v2.0

Autonomous pipeline for finding and validating micro-SaaS opportunities.

## Philosophy

**Complaints ≠ Opportunities.** Most "I wish there was an app" posts lead nowhere because:
- Free alternatives exist
- Market is saturated
- Complainers won't pay

This skill finds **genuine gaps** — problems where people are already paying for inferior solutions.

## Two-Phase Pipeline

### Phase 1: Discovery (Sonnet)
Fast, broad scanning for signals. Runs on schedule (every 6 hours).
- Searches Reddit, Indie Hackers, Twitter
- Applies pre-roast competitive check
- Flags hot opportunities

### Phase 2: Validation (Opus) — AUTO-SPAWNED
Deep 7-section research trying to **kill** each idea:

1. 📊 **Market Reality** — Actual numbers, not "lots"
2. 🔍 **Actual Behavior** — What people DO, not say
3. 💀 **Free Alternatives** — Extensions, OSS, built-in features
4. 💰 **Money Path** — Who holds budget, B2B vs B2C
5. 📈 **Demand Signals** — Trends, search volume, frequency
6. ⚠️ **Risk Assessment** — Platform risk, incumbents
7. 🏗️ **Build Reality** — True timeline (usually 2-3x claimed)

**Only survivors get built.** Expect ~10% survival rate.

## Quick Start

### 1. Set Up Cron Job

```
cron add:
- name: "opportunity-scanner"
- schedule: "0 */6 * * *" (every 6 hours)
- model: claude-sonnet
- message: [See references/scanner-prompt.md]
```

### 2. Configure Output

Create in your workspace:
- `ideas/RESEARCH-LOG.md` — Findings go here
- `RESEARCH-QUERIES.md` — Customize search terms

Run `scripts/setup-scanner.sh` for quick setup.

### 3. Monitor Results

Scanner will:
1. Find opportunities matching high-signal patterns
2. **Auto-spawn Opus validators** for 🔥 HOT finds
3. Update RESEARCH-LOG.md with verdicts

## High-Signal Patterns

| Pattern | Example | Why Good |
|---------|---------|----------|
| Switching frustration | "Tried A, B, C — all suck" | Informed buyer |
| "I built my own" | "Wrote a script for..." | Validated pain |
| Integration gaps | "Zapier can't do X" | Real limitation |
| Dead product mourners | "RIP [tool]" | Demand, no supply |
| Spreadsheet workarounds | "Still track in Sheets" | MVP spec exists |
| Niche wedges | "HIPAA for dental" | Defensible |

## Kill Signals (Auto-Skip)

- Consumer apps (recipes, personal productivity)
- Markets with good free tools
- "I wish" without price signals
- Problems solved by browser extensions
- Broad markets ("IAM for SMBs")

## Files

- `references/scanner-prompt.md` — Full scanner cron prompt
- `references/validator-prompt.md` — 7-section Opus roast template
- `references/search-terms.md` — Subreddits and search queries
- `scripts/setup-scanner.sh` — Quick setup script

## Lessons Learned

From 9+ ideas tested:

1. **Reddit complaints ≠ willingness to pay**
2. **Free alternatives kill most ideas** (always check Chrome extensions)
3. **Broad markets are saturated** (niche down hard)
4. **Check competitors FIRST** (don't get excited before research)
5. **"Dead product" gaps get filled fast** (Jotboard beat us to Jamboard)
6. **10-15% survival rate is healthy** (most ideas SHOULD die)
7. **First roast isn't enough** (v1 validated Jamboard, v2 killed it)

## Stats to Track

In RESEARCH-LOG.md:
- Ideas scanned
- Ideas roasted (with kill reasons)
- Ideas validated
- Survival rate

**Target: Find the 1 in 10 that survives.**
