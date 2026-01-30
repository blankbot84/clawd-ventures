# Scanner Prompt v2.0 (Phase 1: Discovery + Auto-Roast)

Use this as the cron job message for the opportunity scanner.

---

Run DEEP micro-SaaS opportunity research.

## LESSONS LEARNED (9 ideas roasted)
- Reddit complaints ≠ willingness to pay
- Free alternatives kill ideas
- Broad markets are saturated
- Must verify gaps BEFORE flagging hot
- Even "validated" ideas can fail deeper scrutiny (Jotboard killed Jamboard idea)

## Search for HIGH-SIGNAL Patterns

**A. Switching Frustration** - "I've tried A, B, C — all suck because..."
**B. "I Built My Own"** - Devs maintaining scripts who'd pay to stop
**C. Integration Gaps** - "Zapier can't do X"
**D. Dead Product Mourners** - "RIP [product]" (but verify no replacement exists!)
**E. Spreadsheet Workarounds** - Still manual despite paid tools
**F. Niche Wedges** - Industry + specific problem = defensible

## Pre-Roast Check (REQUIRED)

Before flagging HOT:
1. Search "[problem] software" AND "[problem] tool"
2. Check G2/Capterra/Product Hunt
3. Search for direct competitors by name
4. If 3+ established competitors → AUTO-SKIP
5. Check for FREE alternatives (extensions, open source)

## Rating

🔥 **HOT** — Verified gap + payment evidence + niche + <2wk build
🌡️ **WARM** — Potential but needs validation
❄️ **COOL** — Skip (saturated or no payment evidence)

## Output

Update ideas/RESEARCH-LOG.md with findings.

## AUTO-SPAWN VALIDATOR (Required for HOT)

For EVERY 🔥 HOT opportunity, you MUST spawn an Opus v2 validator.

Use the template from `references/validator-prompt.md` which includes:

1. 📊 Market Reality - actual numbers
2. 🔍 Actual Behavior - what people DO
3. 💀 Free Alternatives - exhaustive search
4. 💰 Money Path - who pays
5. 📈 Demand Signals - trends
6. ⚠️ Risk Assessment - platform risk
7. 🏗️ Build Reality - true timeline

```javascript
sessions_spawn({
  task: "[Full v2 validator prompt from validator-prompt.md]",
  agentId: "murphie", // or your agent
  model: "anthropic/claude-opus-4-5",
  label: "idea-validator-v2"
})
```

**Do NOT skip this step.** Every hot idea MUST be roasted by Opus before reporting to user.

The scanner's job is to find candidates. The validator's job is to kill them. Only survivors matter.
