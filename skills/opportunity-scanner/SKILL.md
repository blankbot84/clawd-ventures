---
name: opportunity-scanner
description: Autonomous micro-SaaS opportunity research and validation pipeline. Use when searching for business ideas, validating startup concepts, or running continuous opportunity discovery. Scans Reddit, Indie Hackers, Twitter for genuine gaps — not just complaints. Includes two-phase system: Sonnet discovers, Opus roasts.
---

# Opportunity Scanner

Autonomous pipeline for finding and validating micro-SaaS opportunities.

## Philosophy

**Complaints ≠ Opportunities.** Most "I wish there was an app" posts lead nowhere because:
- Free alternatives exist
- Market is saturated
- Complainers won't pay

This skill finds **genuine gaps** — problems where people are already paying for inferior solutions.

## Two-Phase Pipeline

### Phase 1: Discovery (Sonnet)
Fast, broad scanning for signals. Runs on schedule (every 6 hours recommended).

### Phase 2: Validation (Opus)
Deep competitive research trying to **kill** each idea. Only survivors get built.

## Quick Start

### 1. Set Up Cron Job

```
cron add with:
- name: "opportunity-scanner"
- schedule: "0 */6 * * *" (every 6 hours)
- model: claude-sonnet
- message: [See references/scanner-prompt.md]
```

### 2. Configure Output Location

Create these files in your workspace:
- `ideas/RESEARCH-LOG.md` — Findings go here
- `RESEARCH-QUERIES.md` — Customize search terms

### 3. Monitor Results

Scanner will:
1. Find opportunities matching criteria
2. Auto-spawn Opus validators for 🔥 HOT finds
3. Update RESEARCH-LOG.md with verdicts

## Search Methodology

### High-Signal Patterns (What to Find)

| Pattern | Example | Why It's Good |
|---------|---------|---------------|
| Switching frustration | "Tried A, B, C — all suck" | Informed buyer |
| "I built my own" | "Wrote a script for..." | Validated pain |
| Integration gaps | "Zapier can't do X" | Real limitation |
| Dead product mourners | "RIP [tool]" | Demand, no supply |
| Spreadsheet workarounds | "Still track in Sheets" | MVP spec exists |
| Niche wedges | "HIPAA for dental" | Defensible |

### Kill Signals (What to Skip)

- Consumer apps (recipes, personal productivity)
- Markets with good free tools
- "I wish" without price signals
- Problems solved by browser extensions
- Broad markets ("IAM for SMBs")

### Pre-Roast Check (Required)

Before flagging HOT, scanner MUST:
1. Search "[problem] software" on Google
2. Check G2/Capterra for competitors
3. If 3+ solutions at target price → skip

## Validation Criteria

### ✅ VALIDATE If:
- Verified gap (competitive research done)
- Evidence of payment (people paying for inferior solutions)
- Specific niche or underserved segment
- Buildable in <2 weeks
- Clear path to $1k MRR

### ❌ ROAST If:
- Free alternatives exist
- Market saturated at price point
- Complainers are uninformed (solutions exist)
- Build complexity understated
- No payment evidence

## Files Reference

- `references/scanner-prompt.md` — Full scanner cron prompt
- `references/validator-prompt.md` — Opus validator prompt template
- `references/search-terms.md` — Subreddits and search queries
- `scripts/setup-scanner.sh` — Quick setup script

## Metrics

Track in RESEARCH-LOG.md:
- Ideas scanned
- Ideas roasted (with reasons)
- Ideas validated
- Survival rate (expect ~10-15%)

## Lessons Learned

From testing this system:

1. **Reddit complaints ≠ willingness to pay** — Free alternatives kill most ideas
2. **Broad markets are saturated** — "IAM for SMBs" = JumpCloud owns it
3. **Niche down hard** — Specific industry + specific problem = defensible
4. **Check competitors FIRST** — Don't get excited before research
5. **10-15% survival rate is healthy** — Most ideas should die
