#!/usr/bin/env bash
# Usage: ./set-site-url.sh https://your-site.netlify.app
# Replaces the SITE_URL placeholder in index.html (used by og:image / twitter:image).
set -euo pipefail
[ $# -eq 1 ] || { echo "Usage: $0 https://your-site.netlify.app"; exit 1; }
URL="${1%/}"
if [ "$(uname)" = "Darwin" ]; then sed -i '' "s|SITE_URL|$URL|g" index.html; else sed -i "s|SITE_URL|$URL|g" index.html; fi
echo "Done: og:image now points to $URL/assets/img/og-image.jpg"
