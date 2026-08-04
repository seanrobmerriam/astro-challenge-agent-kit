# Astro Monorepo Workflow

## Outcome

A maintainable workspace containing the design-system app, five independent template apps, shared tokens, minimal shared utilities, tooling configuration, documentation, and marketplace output.

## Entry criteria

- Base-template audit is complete.
- The package manager and Astro compatibility are known.
- Template slugs are finalized.

## Steps

### 1. Choose workspace strategy

Prefer pnpm workspaces. Preserve another package manager only when the base template has a strong, documented dependency on it.

Create:

```text
astro-template-collection/
├── apps/
├── packages/
├── docs/
├── marketplace/
├── scripts/
├── package.json
└── pnpm-workspace.yaml
```

### 2. Create root controls

Add root scripts for install-independent orchestration where supported:

- `dev`
- `build`
- `check`
- `lint`
- `test`
- `format`
- Per-app filtered commands.

Do not introduce a monorepo task runner unless the collection demonstrably needs caching or dependency graph orchestration beyond workspace scripts.

### 3. Create shared packages

Create only justified packages:

- `design-tokens`: canonical CSS variables and expression mappings.
- `shared-utilities`: tiny framework-neutral helpers that are genuinely identical.
- `tooling-config`: shared TypeScript, formatter, or lint configuration.

Do not place product-specific sections, high-level layout components, demo data, or product copy in shared packages.

### 4. Derive the design-system app

Copy `base-template/` to `apps/design-system/` or extract its approved foundation. Remove unrelated routes and content. Install the single-page reference implementation from the design-system workflow.

### 5. Derive five clean apps

For each template:

1. Create the app from a fresh base copy, not from a previously customized sibling.
2. Preserve required license files.
3. Rename package metadata and remove starter branding.
4. Connect shared token/tooling packages.
5. Remove dependencies and integrations the brief does not use.
6. Verify the untouched derived app builds before product implementation.

### 6. Establish isolation

Each template must:

- Build independently from its own package directory.
- Have its own README and lockfile strategy consistent with distribution.
- Avoid importing another app's source.
- Avoid runtime dependence on the design-system app.
- Be packageable without the rest of the monorepo, with shared code copied or published according to the release strategy.

### 7. Add repository documentation

Document:

- Workspace commands.
- App inventory.
- Shared-package boundaries.
- How to add a new template.
- How packages are converted into standalone marketplace archives.
- Versioning and release conventions.

### 8. Validate the graph

Run clean root install, per-app builds, root build, and package-isolation checks. Search for cross-app relative imports and accidental absolute paths.

## Exit artifacts

- Runnable monorepo.
- Root README and scripts.
- Shared packages.
- Six Astro apps.
- Documented standalone packaging strategy.
