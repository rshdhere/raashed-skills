# raashed-skills

The agent skills I use in my day-to-day workflow with Claude Code, bundled behind one command.

## Install

Everything, into the current project:

```bash
curl -fsSL skills.raashed.com | bash
```

Globally (user-level) instead:

```bash
curl -fsSL skills.raashed.com | bash -s -- -g
```

Or install just the `raashed-skills` meta skill, then ask your agent to run `/raashed-skills`. It pulls in the rest:

```bash
npx skills add rshdhere/raashed-skills -y
```

Targets Claude Code by default. Set `SKILLS_AGENT` to install for another agent, e.g. `SKILLS_AGENT=cursor`.

## The workflow

| Stage | Skill | What it does | Source |
| --- | --- | --- | --- |
| Setup | `setup-matt-pocock-skills` | One-time repo setup: issue tracker, triage labels, domain doc layout | [mattpocock/skills](https://github.com/mattpocock/skills) |
| Think | `grilling` | Grills me relentlessly on a plan, decision, or idea | [mattpocock/skills](https://github.com/mattpocock/skills) |
| Think | `grill-with-docs` | Same interview, but writes ADRs and a glossary as it goes | [mattpocock/skills](https://github.com/mattpocock/skills) |
| Plan | `to-spec` | Turns the conversation into a spec on the issue tracker | [mattpocock/skills](https://github.com/mattpocock/skills) |
| Plan | `to-tickets` | Breaks a spec into tracer-bullet tickets with blocking edges | [mattpocock/skills](https://github.com/mattpocock/skills) |
| Build | `implement` | Implements work from a spec or set of tickets | [mattpocock/skills](https://github.com/mattpocock/skills) |
| Build | `tdd` | Test-first, red-green-refactor | [mattpocock/skills](https://github.com/mattpocock/skills) |
| Build | `frontend-design` | Distinctive, intentional UI design | [anthropics/skills](https://github.com/anthropics/skills) |
| Build | `vercel-react-best-practices` | React / Next.js performance rules | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) |
| Build | `turborepo` | Turborepo config, pipelines, caching | [vercel/turborepo](https://github.com/vercel/turborepo) |
| Debug | `diagnosing-bugs` | Diagnosis loop for hard bugs and perf regressions | [mattpocock/skills](https://github.com/mattpocock/skills) |
| Review | `code-review` | Standards and spec review in parallel sub-agents | [mattpocock/skills](https://github.com/mattpocock/skills) |
| Review | `web-design-guidelines` | Audits UI against the Web Interface Guidelines | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) |
| Ship | `pr` | Writes the PR body | [mattpocock/skills](https://github.com/mattpocock/skills) |
| Ship | `commit-message` | Conventional Commits with context and attribution rules | [rshdhere/commit-message-skill](https://github.com/rshdhere/commit-message-skill) |
| Reflect | `retro` | Runs a retrospective on a coding session | [mattpocock/skills](https://github.com/mattpocock/skills) |

## Updating the list

Edit the `SKILLS` array in [`install.sh`](install.sh) and the table in [`skills/raashed-skills/SKILL.md`](skills/raashed-skills/SKILL.md).
