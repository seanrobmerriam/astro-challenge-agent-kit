# Astro Marketplace Template Agent Kit

This kit defines an agent-driven production system for converting one Astro starter in `base-template/` into a commercially viable collection of five differentiated templates.

The collection must include at least one admin/dashboard template and four additional templates selected for distinct customer segments. The agent must first audit the base template, create a collection-level design system, build a single-page `design-system` reference template, establish a workspace monorepo, implement the five products, and package each one for marketplace distribution.

## Contents

- `instructions.md` — persistent operating instructions for the template-production agent.
- `prompt.md` — an orchestration prompt that starts and governs the complete project.
- `skills/` — focused procedures the agent loads for specialized work.
- `workflows/` — repeatable, checkpoint-based production workflows.
- `design-system/` — a standalone Astro single-page design-system reference implementation.
- `schemas/` — machine-readable examples for briefs and collection tracking.
- `scripts/` — an optional monorepo bootstrap utility.

## Expected working-directory layout

```text
working-directory/
├── base-template/                  # Supplied by the user
├── instructions.md
├── prompt.md
├── skills/
├── workflows/
└── design-system/                  # Replace or merge from this kit
```

The agent should create the final product repository as:

```text
astro-template-collection/
├── apps/
│   ├── design-system/
│   ├── template-01-admin/
│   ├── template-02-.../
│   ├── template-03-.../
│   ├── template-04-.../
│   └── template-05-.../
├── packages/
│   ├── design-tokens/
│   ├── shared-utilities/
│   └── tooling-config/
├── docs/
├── marketplace/
├── pnpm-workspace.yaml
└── package.json
```

## Operating principle

The base template is a technical substrate, not the visual product. Preserve proven infrastructure where useful, but replace its branding, content model, layout system, component composition, imagery, and interaction patterns. Each finished template must have a recognizable market position and must not look like a reskin of another collection member.

## Reference notes

The included Astro reference follows Astro's conventional `src/pages`, `src/components`, `src/layouts`, and `src/styles` organization. It uses CSS custom properties and imports a global stylesheet through the layout. The production agent should preserve the supplied base template's compatible conventions rather than force this exact structure when the base uses a justified alternative.
