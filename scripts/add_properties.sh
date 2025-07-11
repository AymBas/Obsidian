#!/usr/bin/env bash
# Adds `checked: false` and `last_updated: <today>` to the YAML front-matter of
# every Markdown file in the repository (except the Templates folder) that
# doesn’t already have those keys.
#
# Usage:
#   ./scripts/add_properties.sh
#
# You can wire this into a git pre-commit hook or run it ad-hoc when migrating
# existing notes.

set -euo pipefail

shopt -s globstar nullglob

TODAY="$(date +%F)"

add_keys() {
  local file="$1"
  local tmp="${file}.tmp"
  awk -v date="$TODAY" '
    BEGIN{front_matter_open=0}
    NR==1 && $0=="---" {front_matter_open=1; print; next}
    front_matter_open && $0=="---" {
      # Insert the missing keys just before closing front-matter
      # Only add a key if it is not already present
      if (!checked_seen)   print "checked: false";
      if (!updated_seen)   print "last_updated: " date;
      print $0;
      front_matter_open=0;
      next;
    }
    /^checked:/   {checked_seen=1}
    /^last_updated:/ {updated_seen=1}
    {print}
  ' "$file" > "$tmp" && mv "$tmp" "$file"
}

prepend_front_matter() {
  local file="$1"
  local tmp="${file}.tmp"
  {
    echo "---"
    echo "checked: false"
    echo "last_updated: $TODAY"
    echo "---"
    cat "$file"
  } > "$tmp" && mv "$tmp" "$file"
}

for md_file in **/*.md; do
  # Skip template files and script itself
  [[ "$md_file" == Templates/* ]] && continue
  [[ "$md_file" == scripts/* ]] && continue

  if grep -q "^---" "$md_file"; then
    # File already has front-matter – make sure required keys exist
    if grep -q "^checked:" "$md_file" && grep -q "^last_updated:" "$md_file"; then
      continue  # nothing to do
    fi
    add_keys "$md_file"
  else
    # No front-matter yet – prepend a complete one
    prepend_front_matter "$md_file"
  fi

done