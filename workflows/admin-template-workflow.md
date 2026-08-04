# Admin Template Workflow

## Outcome

A complete admin/dashboard template that proves the core system under high information density and responsive application constraints.

## Steps

### 1. Define the domain

Choose a credible operational domain such as inventory, client operations, publishing, logistics, subscriptions, support, or compliance. Define the principal resource, user roles, navigation hierarchy, and top five administrative tasks.

### 2. Define route and state coverage

Include:

- Authentication.
- Dashboard overview.
- Resource list/table.
- Resource detail.
- Create/edit form.
- Analytics/reporting.
- Settings/profile.
- 404/error.

Map default, loading, empty, filtered, no-results, error, success, warning, and permission-limited states.

### 3. Build application shell

Implement desktop sidebar/header and mobile navigation. Preserve orientation, current-location state, keyboard access, focus behavior, and usable touch targets.

### 4. Build dense primitives

Implement stats, filter bars, search, tables, pagination, row actions, status badges, forms, alerts, skeletons, and confirmation patterns.

Checkpoint: primitives must work at narrow widths. Use card conversion, priority columns, horizontal overflow with clear affordance, or stacked detail patterns as appropriate.

### 5. Build accessible data display

Charts and indicators must include text summaries, labels, and non-color distinctions. Static SVG/CSS charts are acceptable for demonstration when semantics are preserved. Document integration points for live data.

### 6. Add local demonstration behavior

Filters, tabs, menus, and form states should function locally when feasible. Do not simulate authentication or destructive API actions in misleading ways. Clearly document static-demo boundaries.

### 7. Validate forms

Verify labels, descriptions, required indicators, errors, disabled fields, help text, keyboard use, and successful submission feedback.

### 8. Run admin-specific QA

Test dense data, long names, large numbers, missing avatars, no results, table overflow, mobile task completion, focus order, and screen-reader-friendly status communication.

## Exit criteria

The admin template must look and behave like a credible product interface, not a generic dashboard mockup. All required routes and states must be represented and documented.
