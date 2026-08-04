---
name: accessibility-performance-qa
description: Verify Astro templates for accessibility, responsive behavior, performance, content integrity, and clean production builds.
---

# Accessibility and Performance QA

## Purpose

Run consistent release gates against every route and common state.

## Procedure

1. Create a route checklist from the route matrix.
2. Run clean install and production build for every app.
3. Check semantic landmarks, heading order, page titles, language, labels, alternative text, keyboard access, focus visibility, and error association.
4. Check color contrast for normal text, large text, controls, focus rings, status colors, and chart series.
5. Test reduced motion and ensure animation is not required to understand content.
6. Inspect at representative viewport widths: 360, 430, 768, 1024, 1440, and 1920 CSS pixels, adjusting where product-specific breakpoints require it.
7. Check overflow, text zoom, long labels, long content, tables, navigation, dialogs/disclosures, and form errors.
8. Inspect network and bundle output. Identify unnecessary client JavaScript, oversized assets, remote dependencies, layout shift risks, and unoptimized fonts/images.
9. Check internal links, 404 behavior, console errors, metadata, favicon, and social-image strategy.
10. Record issues by severity and retest fixes.

## Required output

- `docs/quality-plan.md`
- `docs/verification-report.md`
- Per-template QA section in marketplace materials.

## Claim discipline

State only what was tested. Do not write “WCAG compliant,” “100 Lighthouse,” or “all browsers supported” unless the exact scope and evidence are recorded.
