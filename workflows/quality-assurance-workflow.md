# Collection Quality Assurance Workflow

## Outcome

A verified collection with reproducible build results, documented accessibility and responsive checks, clean licensing, and no unresolved release blockers.

## Steps

### 1. Freeze release candidates

Record app versions and commit/revision identifiers. Stop feature additions except fixes required by release gates.

### 2. Clean-build matrix

For the root and every app:

- Remove installed dependencies and build output.
- Install using the documented package manager and lockfile.
- Run check, lint, tests, and build where configured.
- Record command, environment, outcome, warnings, and artifact path.

### 3. Route verification

Use the route matrix to confirm every intended route renders, has metadata, uses correct navigation state, and contains no broken internal links or starter copy.

### 4. Accessibility verification

Check keyboard traversal, focus, landmarks, headings, labels, errors, status messages, contrast, alternative text, reduced motion, zoom, and data visualization meaning.

### 5. Responsive verification

Test at 360, 430, 768, 1024, 1440, and 1920 CSS pixels. Add product-specific widths where a layout changes. Capture failures and retest fixes.

### 6. Content verification

Check grammar, product consistency, realistic data, repeated copy, unsupported claims, demo-data labels, dates, currency formats, and empty-state relevance.

### 7. Performance verification

Review route output, client-hydrated components, JavaScript, image dimensions, font loading, remote calls, layout shift risk, and unusually large assets. Compare against the quality plan's budget.

### 8. Legal and security verification

Check dependency licenses, asset licenses, font rights, attributions, secrets, environment examples, analytics IDs, remote URLs, and source-map/package contents.

### 9. Differentiation verification

Run the final pairwise scoring review. Include evidence from representative routes and product briefs.

### 10. Release decision

Classify issues:

- Blocker: build, legal, security, core accessibility, missing required route, or failed differentiation gate.
- Major: material responsive or buyer-customization failure.
- Minor: polish or documentation issue that does not misrepresent the product.

No blocker may be deferred. A deferred major issue must be explicit in known limitations and approved by the governing instructions.

## Required output

`docs/verification-report.md` containing scope, environment, build matrix, route results, accessibility findings, responsive findings, performance findings, legal review, differentiation results, known limitations, and release decision.
