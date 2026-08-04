---
name: marketplace-packaging
description: Package completed Astro templates for legal, understandable, and credible sale in a digital marketplace.
---

# Marketplace Packaging

## Purpose

Turn a completed app into a product a buyer can evaluate, install, customize, and legally use.

## Procedure

1. Identify target marketplace packaging and preview requirements. Record the retrieval date when marketplace-specific rules are consulted.
2. Create a clean distributable archive that excludes caches, installed dependencies, secrets, internal planning notes, and unrelated collection apps.
3. Include source, lockfile, license notices, README, changelog, customization guide, content guide, deployment guide, and asset disclosure.
4. Verify the archive by extracting it into a clean directory and following the buyer-facing instructions exactly.
5. Write original marketplace copy:
   - Product title.
   - One-sentence positioning.
   - Short description.
   - Long description.
   - Feature list.
   - Route/page list.
   - Technical requirements.
   - Customization summary.
   - Included files.
   - Support boundaries.
   - Tags and categories.
6. Prepare a screenshot and live-demo checklist. Show actual included pages and states; do not present features absent from the package.
7. Create a license/asset manifest and ensure all bundled materials permit resale.
8. Record version number, release date, tested commands, and known limitations.

## Required output

`marketplace/<template-slug>/` containing metadata, copy, screenshot plan, package checklist, asset disclosure, and final archive.

## Validation

A package fails if a clean buyer cannot install it from its README, if it contains secret values or internal caches, or if any bundled asset has unresolved resale rights.
