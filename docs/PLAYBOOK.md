# 📖 Clawd Ventures Playbook

How to ship a micro-SaaS in 5 days or less.

## Day 0: Decide

- [ ] Pick idea from IDEAS.md
- [ ] Write 1-paragraph problem statement
- [ ] Define MVP scope (what's the ONE thing it does?)
- [ ] Create app folder: `apps/{app-name}/`
- [ ] Create PRD.md in app folder

## Day 1: Foundation

- [ ] `npx create-next-app@latest` with App Router
- [ ] Install shadcn/ui
- [ ] Set up basic layout
- [ ] Create landing page with value prop
- [ ] Add waitlist/email capture (even before product works)

## Day 2-3: Core Feature

- [ ] Build the ONE core feature
- [ ] Keep it stupidly simple
- [ ] No auth yet (unless critical)
- [ ] No payments yet
- [ ] Just make the thing WORK

## Day 4: Polish + Payments

- [ ] Add LemonSqueezy/Stripe checkout
- [ ] Basic pricing page
- [ ] Thank you / success page
- [ ] Test the full flow yourself

## Day 5: Ship + Announce

- [ ] Deploy to Vercel
- [ ] Connect custom domain (if available)
- [ ] Post on Twitter/X
- [ ] Post on relevant subreddits
- [ ] Submit to Product Hunt (optional)
- [ ] Update revenue tracker in README

## Post-Launch

- [ ] Monitor for first users
- [ ] Respond to ALL feedback
- [ ] If traction → iterate
- [ ] If crickets after 1 week → move to next idea

## Rules

1. **5 days max per app** — ship or kill
2. **No premature optimization** — ugly that works > beautiful that doesn't
3. **Charge from day 1** — even if it's $1
4. **One feature** — resist scope creep
5. **Document learnings** — every app teaches something

## Tech Defaults

```bash
# New app setup
npx create-next-app@latest apps/{name} --typescript --tailwind --app --src-dir
cd apps/{name}
npx shadcn@latest init
npx shadcn@latest add button card input
```

## Pricing Defaults

- **Micro tools:** $5-9/mo
- **Small SaaS:** $12-19/mo  
- **B2B tools:** $29-49/mo
- **One-time:** 10x monthly price

## Marketing Defaults

- Twitter thread showing how it works
- Reddit post in relevant sub (provide value, not spam)
- Hacker News Show HN (for dev tools)
- IndieHackers post

---

*Ship fast. Learn faster.*
