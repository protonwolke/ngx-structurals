#!/usr/bin/env bash

set -e -o pipefail

rm -rf dist/ngx-structurals
lerna version
ng build ngx-structurals
cd dist/ngx-structurals && npm publish --access public ; cd -
git push --tags