#!/usr/bin/env bash
# Deploy oncesi: site klasorunu hazirla (Netlify + GitHub Pages)
set -e
cd "$(dirname "$0")"
rm -rf site
mkdir -p site
cp index.html site/
cp _headers site/ 2>/dev/null || true
cp netlify.toml site/ 2>/dev/null || true
cp -r public site/public
cp -r photos site/photos
echo "site/ hazir:"
du -sh site
find site -type f | wc -l | xargs echo "  dosya sayisi:"
