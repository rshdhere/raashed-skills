---
name: raashed-skills
description: Install raashed's full set of agent skills (code review, TDD, bug diagnosis, grilling, specs/tickets, commit messages, frontend design, React/Turborepo) into the current project. Use when the user says "raashed-skills", "install my skills", "set up my skills", or starts a new project and wants their usual workflow skills.
---

# raashed-skills

Installs every skill in raashed's workflow in one go.

## Steps

1. Ask once whether to install into this project (default) or globally (`-g`), unless the user already said.
2. Run the installer from the repo root of the current project:

   ```bash
   curl -fsSL skills.raashed.com | bash
   ```

   For a global install append `-s -- -g` to `bash`.
3. Report which skills were installed (the script prints each source). If one source fails, rerun just that line from `install.sh` and report the error verbatim.

## What gets installed

| Skill | Source |
| --- | --- |
| code-review, diagnosing-bugs, grill-with-docs, grilling, implement, tdd, to-spec, to-tickets | mattpocock/skills |
| frontend-design | anthropics/skills |
| vercel-react-best-practices, web-design-guidelines | vercel-labs/agent-skills |
| turborepo | vercel/turborepo |
| commit-message | rshdhere/commit-message-skill |

To add or remove a skill, edit the `SKILLS` list in `install.sh` and this table.
