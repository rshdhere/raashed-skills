#!/usr/bin/env bash
# Install every skill in raashed's workflow into the current project.
#   curl -fsSL skills.raashed.com | bash
# Pass -g to install globally instead:  ... | bash -s -- -g
set -euo pipefail

AGENT="${SKILLS_AGENT:-claude-code}"
EXTRA=("$@")

# source repo -> space-separated skill names
SKILLS=(
  "mattpocock/skills|code-review diagnosing-bugs grill-with-docs grilling implement tdd to-spec to-tickets"
  "anthropics/skills|frontend-design"
  "vercel-labs/agent-skills|vercel-react-best-practices web-design-guidelines"
  "vercel/turborepo|turborepo"
  "rshdhere/commit-message-skill|commit-message"
)

for entry in "${SKILLS[@]}"; do
  src="${entry%%|*}"
  names="${entry#*|}"
  args=()
  for n in $names; do args+=(--skill "$n"); done
  echo "==> $src: $names"
  npx -y skills add "$src" "${args[@]}" --agent "$AGENT" -y "${EXTRA[@]}"
done

echo "Done. Installed raashed-skills for $AGENT."
