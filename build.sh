#!/usr/bin/env sh
# Builds dist/kanagawa-paper-<version>.flex. Requires: python3, zip.
set -eu
cd "$(dirname "$0")"
version=$(python3 -c 'import json; print(json.load(open("extension.json"))["meta"]["version"])')
rm -rf dist && mkdir -p dist/build/stylesheets dist/build/fonts
python3 -c 'import json; json.dump(json.load(open("extension.json")), open("dist/build/extension.json","w"), separators=(",",":"), ensure_ascii=False)'
for f in stylesheets/*.json; do
  python3 -c "import json,sys; json.dump(json.load(open('$f')), open('dist/build/$f','w'), separators=(',',':'), ensure_ascii=False)"
done
cp fonts/*.ttf fonts/OFL.txt dist/build/fonts/
cp LICENSE README.md CHANGELOG.md dist/build/
# zip -r records directory entries; FlorisBoard's importer needs them to create folders.
(cd dist/build && zip -q -r "../kanagawa-paper-$version.flex" .)
rm -rf dist/build
echo "built dist/kanagawa-paper-$version.flex"
