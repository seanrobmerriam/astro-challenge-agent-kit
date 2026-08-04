---
name: design-system-architecture
description: Create a collection-level design system with shared accessible primitives and distinct expression modes for each sellable template.
---

# Design System Architecture

## Purpose

Define a coherent system that accelerates production and buyer customization while preserving meaningful visual differences between the five templates.

## Model

Use two layers:

- Core: semantic color roles, spacing, type roles, focus treatment, motion, breakpoints, grids, primitive states, and accessibility contracts.
- Expression: per-template mappings for palette, typography, density, radius, border, shadow, imagery, and composition.

## Procedure

1. Write 4–6 design principles tied to product value.
2. Define primitive palette values and semantic roles. Include text, muted text, surfaces, borders, action, action-hover, focus, success, warning, danger, and information.
3. Define fluid or breakpoint-aware type roles for display, heading, body, label, caption, and code/data.
4. Define spacing, container, grid, radius, border, elevation, and motion scales.
5. Define component contracts and state coverage before styling examples.
6. Define five expression modes. For each, state density, visual tone, type treatment, radius/elevation language, preferred composition, image treatment, and prohibited patterns.
7. Store canonical tokens in a shared package or a clearly documented source that each app can consume or copy safely.
8. Implement the `design-system` app as a single page showing rendered examples and token documentation.

## Minimum component coverage

Buttons, links, badges, cards, form controls, alerts, navigation, tabs or segmented controls, tables, pagination, empty states, loading states, error states, stat blocks, and accessible chart/data-color examples.

## Required output

- `docs/design-system-spec.md`
- Shared token source.
- `apps/design-system/` with one route.
- Per-template expression-mode sections in each brief.

## Validation

Every visual value used repeatedly must map to a token or a documented illustration exception. Every component must define hover, focus, active, disabled, and error behavior where applicable.
