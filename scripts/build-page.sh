#!/bin/bash

set -euo pipefail

if [ $# -eq 0 ]; then
    echo "Error: No arguments provided"
    exit 1
fi

# The version should be the first argument.
version="$1"

echo "Generating HTML page for dprint_plugin_markdown-$version.wasm"

page="<!doctype html>
<html lang=\"en-US\">

<head>
  <meta charset=\"utf-8\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
  <title>dprint_plugin_markdown fork $version</title>
  <meta name=\"description\" content=\"Fork of dprint_plugin_markdown until it gets merged. Currently $version\">
</head>

<body>

  <!-- Add your site or application content here -->
  <p><a href=\"./dprint_plugin_markdown-$version.wasm\">dprint_plugin_markdown $version</a></p>

</body>

</html>"

echo "$page" > ./dist/index.html
