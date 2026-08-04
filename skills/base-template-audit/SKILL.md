---
name: base-template-audit
description: Audit an existing Astro starter before deriving commercial templates. Use before any modification or monorepo extraction.
---

# Base Template Audit

## Purpose

Determine what the supplied `base-template/` provides, whether it can legally and technically support resale, and which parts should be preserved, refactored, replaced, or removed.

## Inputs

- `base-template/`
- Root package-manager files and lockfiles.
- Existing license, attribution, README, and deployment files.

## Procedure

1. Confirm the directory exists and identify the package manager from the lockfile.
2. Record runtime requirements, package scripts, Astro version, output mode, adapter, integrations, UI-framework islands, CSS strategy, content sources, and environment variables.
3. Inventory routes, layouts, components, utilities, styles, public assets, data files, tests, and scripts.
4. Search for starter branding, placeholder content, remote assets, credentials, analytics IDs, and hard-coded URLs.
5. Review all direct dependencies for purpose and license. Flag unclear, non-redistributable, abandoned, redundant, or unusually heavy packages.
6. Review all bundled assets and fonts for license and attribution requirements.
7. Install dependencies using the existing lockfile and documented package manager.
8. Run lint, typecheck, tests, and production build when scripts exist. Start the development server long enough to verify that the main route renders.
9. Produce a route inventory and a reuse classification:
   - Preserve unchanged.
   - Preserve with refactor.
   - Replace.
   - Remove.
10. Copy diagnostic output into an appendix without exposing secrets.

## Required output

Write `docs/base-template-audit.md` with:

- Executive assessment.
- Architecture summary.
- Route and component inventory.
- Dependency and asset findings.
- Build baseline.
- Resale/licensing risks.
- Reuse classification table.
- Migration constraints.
- Recommended monorepo derivation strategy.

## Validation

The audit is incomplete if it does not state whether the unchanged base builds, whether its assets may be redistributed, and how each major subsystem will be handled.
