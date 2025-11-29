#!/bin/bash
# Script to update cache-busting version parameter in all HTML files
# Usage: ./update-cache-version.sh [version]
# Example: ./update-cache-version.sh 1.1
# If no version is provided, uses timestamp

VERSION=${1:-$(date +%s)}

echo "Updating cache version to: $VERSION"

find . -name "*.html" -type f -exec perl -i -pe "s|href=\"([^\"]*\.html)\?v=[^\"]*\"|href=\"\$1?v=$VERSION\"|g" {} \;
find . -name "*.html" -type f -exec perl -i -pe "s|href='([^']*\.html)\?v=[^']*'|href='\$1?v=$VERSION'|g" {} \;
find . -name "*.html" -type f -exec perl -i -pe "s|href=\"([^\"]*\.html)\"|href=\"\$1?v=$VERSION\"|g" {} \;
find . -name "*.html" -type f -exec perl -i -pe "s|href='([^']*\.html)'|href='\$1?v=$VERSION'|g" {} \;

echo "Cache version updated successfully!"

