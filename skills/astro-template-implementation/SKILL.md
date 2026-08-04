---
name: astro-template-implementation
description: Implement a buyer-friendly Astro template from an approved brief while preserving minimal JavaScript and clear customization paths.
---

# Astro Template Implementation

## Purpose

Convert an approved template brief and expression mode into a complete, distributable Astro application.

## Procedure

1. Derive a clean app from `base-template/` using the audit's migration strategy.
2. Remove starter branding, demo copy, dead routes, unused dependencies, and irrelevant assets.
3. Establish app-level metadata, navigation model, content/data organization, layout primitives, and token mappings.
4. Implement the route shell and shared app-specific components.
5. Build the highest-risk or signature route first. Validate its responsive behavior before duplicating patterns.
6. Implement remaining routes using realistic domain content.
7. Add only interactions that improve the product demonstration. Use native HTML before client islands.
8. Include empty, loading, error, long-content, narrow-screen, and missing-image behavior where the domain requires them.
9. Add SEO metadata, social-image placeholder guidance, favicon, and 404 treatment.
10. Write buyer documentation while implementation details are fresh.

## Component rules

- Organize by product responsibility.
- Keep content separate from rendering where buyers are likely to edit it.
- Use semantic tokens, not raw palette values.
- Avoid a universal collection component library for high-level sections.
- Do not add a dependency to avoid writing a small, stable component.

## Required output per app

- Complete routes and assets.
- `README.md`
- `CHANGELOG.md`
- `LICENSE-NOTICES.md`
- `.env.example` when environment values exist.
- `docs/customization.md`
- `docs/content.md`
- `docs/deployment.md`

## Validation

Run install, typecheck, lint, tests, and build as available. Verify every internal route and remove all warnings that indicate broken behavior or buyer confusion.
