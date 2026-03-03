#!/bin/bash
# Migration script: Convert claude-scientific-skills to standard plugin structure
# Run from the repo root: bash migrate-to-plugin.sh
#
# What this does:
# 1. Renames scientific-skills/ → skills/ (standard plugin convention)
# 2. marketplace.json and plugin.json are already updated (done pre-migration)
# 3. commands/ directory already created with 20 slash commands
# 4. Updates references in README.md and docs/
#
# The marketplace.json, plugin.json, and commands/ were created before this script.
# This script handles the git mv of the skills directory and doc updates.
#
# This is safe to run — it uses git mv so changes are tracked.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_ROOT"

echo "=== Claude Scientific Skills → Plugin Migration ==="
echo ""

# Step 1: Rename scientific-skills/ → skills/
if [ -d "scientific-skills" ] && [ ! -d "skills" ]; then
    echo "[1/4] Renaming scientific-skills/ → skills/"
    git mv scientific-skills skills
    echo "  ✓ Directory renamed via git mv"
else
    if [ -d "skills" ]; then
        echo "[1/4] skills/ directory already exists — skipping rename"
    else
        echo "[1/4] ERROR: scientific-skills/ not found!"
        exit 1
    fi
fi

# Step 2: Verify marketplace.json has updated paths
echo "[2/4] Verifying .claude-plugin/marketplace.json"
if [ -f ".claude-plugin/marketplace.json" ]; then
    if grep -q '"./scientific-skills/' .claude-plugin/marketplace.json; then
        echo "  ⚠ Found old paths in marketplace.json — updating..."
        sed -i '' 's|"./scientific-skills/|"./skills/|g' .claude-plugin/marketplace.json
        echo "  ✓ marketplace.json paths updated"
    else
        echo "  ✓ marketplace.json already has correct paths"
    fi
else
    echo "  ⚠ marketplace.json not found"
fi

# Step 3: Verify plugin.json exists
echo "[3/4] Checking .claude-plugin/plugin.json"
if [ -f ".claude-plugin/plugin.json" ]; then
    echo "  ✓ plugin.json present"
else
    echo "  ⚠ plugin.json not found — you may need to create it"
fi

# Step 4: Update references in README.md and docs
echo "[4/4] Updating documentation references"
FILES_UPDATED=0

if [ -f "README.md" ]; then
    if grep -q 'scientific-skills/' README.md; then
        sed -i '' 's|scientific-skills/|skills/|g' README.md
        echo "  ✓ README.md updated"
        FILES_UPDATED=$((FILES_UPDATED + 1))
    else
        echo "  ✓ README.md already up to date"
    fi
fi

for doc in docs/*.md; do
    if [ -f "$doc" ]; then
        if grep -q 'scientific-skills/' "$doc"; then
            sed -i '' 's|scientific-skills/|skills/|g' "$doc"
            echo "  ✓ $doc updated"
            FILES_UPDATED=$((FILES_UPDATED + 1))
        fi
    fi
done

echo ""
echo "=== Migration complete ==="
echo ""
echo "Summary of new plugin structure:"
echo ""
echo "  claude-scientific-skills/"
echo "  ├── .claude-plugin/"
echo "  │   ├── marketplace.json    (marketplace format — updated paths)"
echo "  │   └── plugin.json         (standard plugin format — NEW)"
echo "  ├── commands/               (20 slash commands — NEW)"
echo "  │   ├── clinical-trial-search.md"
echo "  │   ├── drug-discovery.md"
echo "  │   ├── eda.md"
echo "  │   ├── financial-analysis.md"
echo "  │   ├── geospatial-analysis.md"
echo "  │   ├── grant-writing.md"
echo "  │   ├── hypothesis-generation.md"
echo "  │   ├── lab-protocol.md"
echo "  │   ├── literature-review.md"
echo "  │   ├── market-research.md"
echo "  │   ├── medical-imaging.md"
echo "  │   ├── multi-omics.md"
echo "  │   ├── network-biology.md"
echo "  │   ├── peer-review.md"
echo "  │   ├── protein-engineering.md"
echo "  │   ├── quantum-computing.md"
echo "  │   ├── scientific-poster.md"
echo "  │   ├── scientific-slides.md"
echo "  │   ├── scientific-writing.md"
echo "  │   ├── single-cell-analysis.md"
echo "  │   ├── statistical-analysis.md"
echo "  │   ├── treatment-plan.md"
echo "  │   ├── variant-analysis.md"
echo "  │   └── virtual-screening.md"
echo "  ├── skills/                 (renamed from scientific-skills/)"
echo "  │   ├── adaptyv/"
echo "  │   ├── scanpy/"
echo "  │   ├── rdkit/"
echo "  │   └── ... (148+ skills)"
echo "  ├── docs/"
echo "  ├── README.md"
echo "  └── LICENSE.md"
echo ""
echo "Next steps:"
echo "  1. Review changes: git status && git diff"
echo "  2. Stage everything: git add -A"
echo "  3. Commit: git commit -m 'refactor: restructure to standard plugin layout with commands'"
echo "  4. Optionally delete this migration script: rm migrate-to-plugin.sh"
echo ""
