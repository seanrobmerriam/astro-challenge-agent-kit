#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'USAGE'
Usage:
  ./scripts/bootstrap-monorepo.sh [base-template] [destination] [admin-slug] [slug-2] [slug-3] [slug-4] [slug-5]

Defaults:
  base-template: ./base-template
  destination:   ./astro-template-collection
  app slugs:     control-deck launchline atelier-north dispatch provision

The script creates the workspace and derives every app from a fresh copy of the base template. It then overlays this kit's single-page design-system reference onto apps/design-system.
USAGE
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

BASE_TEMPLATE="${1:-./base-template}"
DESTINATION="${2:-./astro-template-collection}"
ADMIN_SLUG="${3:-control-deck}"
SLUG_2="${4:-launchline}"
SLUG_3="${5:-atelier-north}"
SLUG_4="${6:-dispatch}"
SLUG_5="${7:-provision}"

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
KIT_DIR="$(cd -- "$SCRIPT_DIR/.." && pwd)"

if [[ ! -d "$BASE_TEMPLATE" ]]; then
  printf 'Error: base template directory not found: %s\n' "$BASE_TEMPLATE" >&2
  exit 1
fi

if [[ -e "$DESTINATION" ]]; then
  printf 'Error: destination already exists: %s\n' "$DESTINATION" >&2
  exit 1
fi

copy_base() {
  local target="$1"
  mkdir -p "$target"
  (
    cd "$BASE_TEMPLATE"
    tar \
      --exclude='./node_modules' \
      --exclude='./dist' \
      --exclude='./.astro' \
      --exclude='./.git' \
      -cf - .
  ) | (cd "$target" && tar -xf -)
}

mkdir -p "$DESTINATION/apps" "$DESTINATION/packages/design-tokens" \
  "$DESTINATION/packages/shared-utilities" "$DESTINATION/packages/tooling-config" \
  "$DESTINATION/docs/template-briefs" "$DESTINATION/marketplace" "$DESTINATION/scripts"

for slug in design-system "$ADMIN_SLUG" "$SLUG_2" "$SLUG_3" "$SLUG_4" "$SLUG_5"; do
  copy_base "$DESTINATION/apps/$slug"
done

# Overlay the runnable design-system page while preserving unrelated base files.
tar --exclude='./node_modules' --exclude='./dist' -C "$KIT_DIR/design-system" -cf - . \
  | tar -C "$DESTINATION/apps/design-system" -xf -

cat > "$DESTINATION/pnpm-workspace.yaml" <<'YAML'
packages:
  - apps/*
  - packages/*
YAML

cat > "$DESTINATION/package.json" <<EOF_ROOT
{
  "name": "astro-template-collection",
  "version": "0.1.0",
  "private": true,
  "scripts": {
    "build": "pnpm -r --if-present build",
    "check": "pnpm -r --if-present check",
    "dev:design-system": "pnpm --filter design-system dev"
  }
}
EOF_ROOT

cp "$KIT_DIR/schemas/template-brief-template.md" "$DESTINATION/docs/template-briefs/_template.md"
cp "$KIT_DIR/schemas/collection-manifest.example.json" "$DESTINATION/docs/collection-manifest.json"

cat > "$DESTINATION/README.md" <<EOF_README
# Astro Template Collection

Derived from: \`$BASE_TEMPLATE\`

Apps:

- \`apps/design-system\`
- \`apps/$ADMIN_SLUG\` — required admin template
- \`apps/$SLUG_2\`
- \`apps/$SLUG_3\`
- \`apps/$SLUG_4\`
- \`apps/$SLUG_5\`

Follow the agent kit's instructions and workflows before implementing product pages.
EOF_README

printf 'Created workspace at %s\n' "$DESTINATION"
printf 'Next: audit the base template and replace placeholder product slugs only through the approved briefs.\n'
