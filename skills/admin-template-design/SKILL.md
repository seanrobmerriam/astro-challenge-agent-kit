---
name: admin-template-design
description: Design and implement a credible, responsive, accessible Astro admin/dashboard template with dense states and data interfaces.
---

# Admin Template Design

## Purpose

Create an admin product that demonstrates realistic application UI rather than a marketing page with a sidebar.

## Required routes

- Sign in and one additional authentication state.
- Dashboard overview.
- Resource list/table.
- Resource detail.
- Create or edit form.
- Analytics or reporting.
- Settings/profile.
- Error or not-found route.

## Required states

Default, empty, loading/skeleton, filtered, no-results, success, warning, destructive confirmation, validation error, and permission-limited state.

## Procedure

1. Define the administrative domain and its principal resource.
2. Define navigation hierarchy, permissions assumptions, key tasks, and realistic data fields.
3. Establish desktop and mobile shells. On narrow screens, preserve task completion rather than merely hiding columns.
4. Build table behavior: sorting indicators, filters, search, row actions, selection, pagination, overflow strategy, and accessible labels. Demo interactions may be local but must be functional or explicitly documented.
5. Build forms with labels, descriptions, required indicators, validation, errors, disabled states, and confirmation feedback.
6. Create data visualizations using accessible text summaries and non-color-only distinctions.
7. Test keyboard order, focus management, disclosure behavior, and reduced motion.
8. Document where a buyer would connect real authentication, API data, and chart libraries.

## Validation

The template fails if its mobile experience requires a desktop viewport, its charts lack textual meaning, its controls are visual-only, or its data is obviously generic filler.
