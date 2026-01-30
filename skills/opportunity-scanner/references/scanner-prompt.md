# Scanner Prompt (Phase 1: Discovery)

Use this as the cron job message for the opportunity scanner.

---

Run DEEP micro-SaaS opportunity research.

## LESSONS LEARNED
- Reddit complaints ≠ willingness to pay
- Free alternatives kill ideas
- Broad markets are saturated
- Must verify gaps BEFORE flagging as hot

## Search Criteria

### MUST HAVE (Non-negotiable)
1. **B2B or Prosumer** — Businesses pay, consumers don't
2. **No good free alternative** — Or free options genuinely suck
3. **Pain = Money Lost** — Actual $ on the line
4. **Evidence of PAYMENT** — Already paying for inferior solutions

### KILL SIGNALS (Skip immediately)
- Consumer apps
- Markets with good free tools
- "I wish" without price signals
- Problems solved by browser extensions
- Subscription-hostile markets

### HIGH-VALUE SEARCH TERMS
- "we're paying $X for" + "but it sucks"
- "looking for alternative to [expensive tool]"
- "our team needs" + "budget for"
- "compliance" "audit" "reporting"
- "agency" "client" "billing" problems

## High-Signal Patterns

**A. Switching Frustration**
- ❌ SKIP: "I wish there was a tool for X"
- ✅ FIND: "I've tried A, B, C — they all suck because..."

**B. "I Built My Own" Signal**
- Devs who rolled their own solution
- "I wrote a script to..." / "built an internal tool"

**C. Integration Gaps**
- "I wish [Tool A] talked to [Tool B]"
- "Zapier can't do X"

**D. Dead Product Mourners**
- "RIP [product], nothing else does X"
- Products that shut down with loyal users

**E. Spreadsheet Workarounds**
- "We use [enterprise tool] but track X in Sheets"
- The spreadsheet IS the MVP spec

**F. Niche Wedges**
- NOT "IAM for SMBs" (too broad)
- YES "HIPAA compliance for dental practices"

## Pre-Roast Check (REQUIRED)

Before flagging HOT:
1. Search "[problem] software"
2. Check G2/Capterra
3. If 3+ established competitors → AUTO-SKIP

## Rating System

🔥 **HOT** — ALL of these:
- Verified gap
- Payment evidence
- Specific niche
- <2 week build
- Path to $1k MRR

🌡️ **WARM** — Has potential, needs validation

❄️ **COOL** — Likely saturated or no payment evidence

## Output

Update ideas/RESEARCH-LOG.md with:
- The gap (what's missing)
- Competitor check results
- Evidence links
- Build estimate
- Why this ISN'T already solved

## Validation Step

For 🔥 HOT opportunities, spawn Opus validator:

```
sessions_spawn({
  task: "[Use validator-prompt.md template]",
  model: "anthropic/claude-opus-4-5",
  label: "idea-validator"
})
```

Only spawn for genuinely differentiated B2B opportunities.
