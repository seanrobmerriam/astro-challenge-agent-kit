# Design System Workflow

## Outcome

A documented collection-level design system, a canonical token source, and a single-page Astro reference app named `design-system`.

## Entry criteria

- `docs/base-template-audit.md` exists.
- Five template briefs have been approved by the agent's internal quality review.
- The differentiation matrix identifies the intended expression differences.

## Steps

### 1. Extract constraints

Read the base-template audit and briefs. List technical constraints, accessibility requirements, supported interaction patterns, content densities, and shared buyer customization needs.

Checkpoint: the system must support both the densest admin interface and the most expressive marketing/editorial product.

### 2. Define principles

Write 4–6 concise principles. Each principle must guide a design decision. Avoid generic statements such as “be beautiful” or “keep it simple.”

Examples of useful principle types:

- Information hierarchy before decoration.
- Strong focus and state visibility.
- Expressive surfaces, restrained motion.
- Content determines density.
- Customization through semantic tokens.

### 3. Define core foundations

Specify:

- Primitive and semantic colors.
- Type families, roles, weights, line heights, and responsive sizes.
- Spacing and sizing scales.
- Containers, columns, gutters, and breakpoints.
- Borders, radii, shadows, and surface levels.
- Focus ring and selection behavior.
- Motion durations, easing, and reduced-motion fallback.
- Icon sizing, stroke conventions, and accessible labeling.
- Image ratios, cropping behavior, and art-direction rules.

Checkpoint: core values must be sufficient to build a form, a data table, an editorial page, and a marketing hero without inventing new foundational scales.

### 4. Define component contracts

For every required component, document anatomy, variants, sizes, states, responsive behavior, semantics, keyboard behavior, and token usage.

Cover at minimum:

- Buttons and links.
- Badges and status indicators.
- Cards and panels.
- Inputs, textareas, selects, checkboxes, and radios.
- Alerts and validation messages.
- Navigation and breadcrumbs.
- Tabs or segmented controls.
- Tables and pagination.
- Empty, loading, error, and success states.
- Stat blocks and data visualization colors.

### 5. Define five expression modes

For each template, map core semantic roles into a distinctive expression. Document:

- Palette mapping.
- Typography treatment.
- Density.
- Radius and shadow language.
- Border strength.
- Grid/composition preference.
- Image treatment.
- Motion personality.
- Components that receive unique product-level designs.
- Patterns forbidden because they belong to another template.

Checkpoint: place the five modes side by side. A reviewer should be able to identify each product without reading its name.

### 6. Implement canonical tokens

Create `packages/design-tokens/` or the equivalent supported by the base. Use CSS custom properties with semantic names. Separate primitive values from semantic mappings and template-expression overrides.

Do not create a runtime theming engine unless buyers need runtime theme switching. Build-time or stylesheet-level mappings are preferred.

### 7. Build the single-page reference

Create `apps/design-system/src/pages/index.astro`. The page must include:

1. Principles and usage guidance.
2. Foundations and rendered swatches.
3. Typography specimen.
4. Spacing, grid, radius, and elevation examples.
5. Interactive component states.
6. Forms and feedback states.
7. Admin/data patterns.
8. The five expression modes.
9. Accessibility and content conventions.

Use semantic navigation with anchor links. Ensure the page is usable by keyboard and on mobile.

### 8. Validate

- Run production build.
- Verify all documented tokens exist.
- Verify all repeated visual values use tokens.
- Check focus, contrast, form labels, heading order, reduced motion, and mobile overflow.
- Ensure the page does not depend on remote assets.

## Exit artifacts

- `docs/design-system-spec.md`
- `packages/design-tokens/`
- `apps/design-system/`
- Updated expression-mode sections in all template briefs.
