# Marketplace Release Workflow

## Outcome

Five verified standalone product packages and complete marketplace listing materials, plus optional collection/bundle materials.

## Steps

### 1. Confirm target rules

When a marketplace is named, retrieve its current submission, preview, file, licensing, and support requirements. Record source and date. Keep generic materials portable across marketplaces.

### 2. Create standalone distributions

For each app, create a clean directory containing only buyer-required source and documentation. Resolve shared workspace packages by publishing, vendoring, or copying them according to the documented strategy.

Exclude:

- `node_modules/`
- Build caches and local output.
- Secrets and real environment files.
- Internal decision logs and unreleased sibling apps.
- Editor and OS clutter.
- Raw design/research files not included in the product promise.

### 3. Verify as buyer

Extract each archive into a clean temporary directory. Follow the included README exactly. Record installation, development, and build results.

### 4. Prepare listing copy

Write accurate, original copy for each product. Include positioning, audience, feature list, page list, technical stack, customization options, included files, requirements, support scope, and known limitations.

### 5. Prepare visual plan

Create a shot list covering:

- Primary desktop preview.
- Mobile preview.
- Signature route.
- Interior route.
- State-rich route.
- Component/detail montage.
- Admin data/table/form screens where applicable.

Do not include screenshots of excluded or nonfunctional features.

### 6. Finalize license materials

Include dependency notices, asset licenses, attribution, demo-content disclaimer, and buyer usage terms supplied by the seller or marketplace. Do not invent legal terms beyond provided policy.

### 7. Version and archive

Use consistent semantic versioning. Generate checksums when useful. Record package filename, version, date, build environment, and tested commands.

### 8. Bundle materials

Create collection-level copy explaining the shared design-system quality and the distinct use cases. Do not imply that purchasing one template includes the other four unless that is the actual product structure.

## Exit artifacts

```text
marketplace/
├── collection/
│   ├── listing.md
│   ├── screenshot-plan.md
│   └── release-manifest.md
└── <template-slug>/
    ├── listing.md
    ├── screenshot-plan.md
    ├── package-checklist.md
    ├── asset-disclosure.md
    ├── release-manifest.md
    └── <template-slug>-vX.Y.Z.zip
```
