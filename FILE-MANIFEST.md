# File Manifest

## Agent control

- `instructions.md` — complete role, constraints, architecture, execution sequence, quality gates, and completion contract.
- `prompt.md` — end-to-end orchestration prompt.
- `quality-gates.md` — fast blocker checklist.

## Skills

- `skills/base-template-audit/SKILL.md`
- `skills/collection-strategy/SKILL.md`
- `skills/design-system-architecture/SKILL.md`
- `skills/astro-template-implementation/SKILL.md`
- `skills/template-differentiation/SKILL.md`
- `skills/admin-template-design/SKILL.md`
- `skills/accessibility-performance-qa/SKILL.md`
- `skills/marketplace-packaging/SKILL.md`

## Workflows

- `workflows/design-system-workflow.md`
- `workflows/astro-monorepo-workflow.md`
- `workflows/template-portfolio-workflow.md`
- `workflows/template-production-workflow.md`
- `workflows/admin-template-workflow.md`
- `workflows/quality-assurance-workflow.md`
- `workflows/marketplace-release-workflow.md`

## Astro reference

- `design-system/src/pages/index.astro` — single-page rendered design-system reference.
- `design-system/src/layouts/BaseLayout.astro` — document shell and theme initialization.
- `design-system/src/styles/global.css` — core tokens, components, five expression modes, responsive rules, and reduced-motion handling.
- Supporting Astro configuration, package metadata, README, and favicon.

## Supporting automation

- `scripts/bootstrap-monorepo.sh` — derives six apps from a supplied `base-template/` and overlays the design-system reference.
- `schemas/template-brief-template.md` — repeatable product brief.
- `schemas/collection-manifest.example.json` — machine-readable collection tracking example.
