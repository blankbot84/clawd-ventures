#!/bin/bash
# Setup script for opportunity-scanner skill
# Run this to initialize the required files in your workspace

set -e

echo "🔍 Setting up Opportunity Scanner..."

# Create directories
mkdir -p ideas

# Create RESEARCH-LOG.md if it doesn't exist
if [ ! -f "ideas/RESEARCH-LOG.md" ]; then
  cat > ideas/RESEARCH-LOG.md << 'EOF'
# 🔍 Opportunity Research Log

Auto-generated findings from the opportunity scanner.

## Format

Each entry includes:
- **Source** — Where found
- **Problem** — What people complain about
- **Gap** — Why existing solutions fail
- **Evidence** — Quotes and links
- **Competitor Check** — What already exists
- **Rating** — 🔥 Hot | 🌡️ Warm | ❄️ Cool
- **Verdict** — ✅ Validated | ❌ Roasted | 🔄 Pending

---

## 🔥 HOT (Pending Validation)

<!-- Hot opportunities awaiting Opus validation -->

---

## ✅ VALIDATED (Ready to Build)

<!-- Opportunities that survived the roast -->

---

## ❌ ROASTED (Killed)

<!-- Ideas that failed validation — keep for learnings -->

---

## 📊 Stats

- **Scanned:** 0
- **Roasted:** 0
- **Validated:** 0
- **Survival Rate:** N/A
EOF
  echo "✅ Created ideas/RESEARCH-LOG.md"
else
  echo "⏭️  ideas/RESEARCH-LOG.md already exists"
fi

# Create RESEARCH-QUERIES.md if it doesn't exist
if [ ! -f "RESEARCH-QUERIES.md" ]; then
  cat > RESEARCH-QUERIES.md << 'EOF'
# 🎯 Research Queries

Customize these search terms for your opportunity scanner.

## Subreddits to Monitor

Add industry-specific subreddits relevant to your interests:

- r/SaaS
- r/entrepreneur
- r/agencies
- r/MSP

## Custom Search Terms

Add terms specific to industries you want to explore:

- "your industry" + "software"
- "your niche" + "tool"

## Industries of Interest

List verticals you want to focus on:

1. 
2. 
3. 
EOF
  echo "✅ Created RESEARCH-QUERIES.md"
else
  echo "⏭️  RESEARCH-QUERIES.md already exists"
fi

echo ""
echo "🎉 Setup complete!"
echo ""
echo "Next steps:"
echo "1. Edit RESEARCH-QUERIES.md to customize your search focus"
echo "2. Set up the cron job using references/scanner-prompt.md"
echo "3. Monitor ideas/RESEARCH-LOG.md for findings"
