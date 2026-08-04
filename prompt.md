# Orchestration Prompt — Build Five Sellable Astro Templates

You are operating as the Marketplace Template Production Agent defined in `instructions.md`.

The working directory contains an Astro project at `base-template/`. Treat it as a technical foundation, not as a visual direction. Do not edit it in place.

Your objective is to create a workspace monorepo named `astro-template-collection/` containing:

- `apps/design-system`: a single-page rendered reference for the collection's custom design system.
- Five complete, original Astro templates suitable for commercial marketplace distribution.
- At least one full admin/dashboard template.
- Shared token and tooling packages where they produce genuine reuse without homogenizing the products.
- Planning, QA, documentation, licensing, preview, and marketplace-release artifacts.

Read and obey these files before implementation:

1. `instructions.md`
2. Every applicable `skills/*/SKILL.md`
3. `workflows/design-system-workflow.md`
4. `workflows/astro-monorepo-workflow.md`
5. `workflows/template-portfolio-workflow.md`
6. `workflows/template-production-workflow.md`
7. `workflows/admin-template-workflow.md`
8. `workflows/quality-assurance-workflow.md`
9. `workflows/marketplace-release-workflow.md`

## Mandatory execution contract

1. Inspect and build `base-template/` unchanged. Record its architecture, routes, dependencies, license status, reusable infrastructure, risks, and baseline build result in `astro-template-collection/docs/base-template-audit.md`.
2. Define five market positions and write complete briefs before building product pages. The portfolio must cover distinct buyers and jobs-to-be-done. Use the default portfolio in `instructions.md` only when it remains the strongest option after analysis.
3. Create `collection-strategy.md`, `differentiation-matrix.md`, and `route-matrix.md`. Enforce the pairwise differentiation threshold from `instructions.md`.
4. Create a collection-level design system with core primitives and five expression modes. Implement and document it in `apps/design-system` as one comprehensive route.
5. Create the monorepo by deriving each app from a clean copy of `base-template/` or by extracting only the justified base infrastructure. Preserve required licenses and document every significant removal or replacement.
6. Implement the admin template first. It must include dashboard, table/list, resource detail, create/edit form, settings, authentication, empty/loading/error states, responsive navigation, and accessible data display.
7. Implement the other four templates sequentially. After each template, run its build and focused QA before starting the next.
8. Use realistic domain content and original visual composition. Do not use lorem ipsum, copied marketplace copy, external brand logos, or unlicensed bundled assets.
9. Prefer semantic Astro, CSS custom properties, and minimal JavaScript. Add dependencies only through the dependency-ledger process.
10. Run final cross-template QA, packaging, and marketplace preparation. Do not declare completion while any required build, route, accessibility, licensing, documentation, or differentiation gate is unresolved.

## Required output structure

```text
astro-template-collection/
├── apps/
│   ├── design-system/
│   ├── <admin-template-slug>/
│   ├── <template-02-slug>/
│   ├── <template-03-slug>/
│   ├── <template-04-slug>/
│   └── <template-05-slug>/
├── packages/
│   ├── design-tokens/
│   ├── shared-utilities/
│   └── tooling-config/
├── docs/
│   ├── base-template-audit.md
│   ├── collection-strategy.md
│   ├── design-system-spec.md
│   ├── differentiation-matrix.md
│   ├── route-matrix.md
│   ├── dependency-ledger.md
│   ├── asset-ledger.md
│   ├── quality-plan.md
│   ├── release-plan.md
│   ├── verification-report.md
│   └── template-briefs/
├── marketplace/
│   ├── collection/
│   └── <one-folder-per-template>/
├── scripts/
├── pnpm-workspace.yaml
└── package.json
```

## Working behavior

- Make reasonable decisions without waiting for approval unless a missing fact makes compliant implementation impossible.
- Keep a concise decision log in `docs/decision-log.md`.
- Preserve a runnable state. Commit-sized milestones should build whenever practical.
- When a check fails, fix the cause rather than weakening the quality gate.
- When the supplied base conflicts with resale, accessibility, or maintainability requirements, document the conflict and replace the problematic part.

## Final report

When complete, provide a precise summary containing the five product names, intended buyers, route counts, signature differentiators, build status, accessibility status, dependencies added, licensing status, package locations, and unresolved limitations. Include no unsupported claims.

Begin now by reading the required files and auditing `base-template/`.
