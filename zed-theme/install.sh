#!/bin/bash

# Islands Dark Zed Theme Installer
# Installs the Islands Dark theme for Zed editor

set -e

echo "🏝️  Islands Dark Theme Installer for Zed"
echo "========================================"
echo ""

# Determine the theme directory based on OS
if [[ "$OSTYPE" == "darwin"* ]] || [[ "$OSTYPE" == "linux-gnu"* ]]; then
    THEME_DIR="$HOME/.config/zed/themes"
elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]]; then
    THEME_DIR="$APPDATA/Zed/themes"
else
    echo "❌ Unsupported operating system: $OSTYPE"
    exit 1
fi

echo "📁 Theme directory: $THEME_DIR"
echo ""

# Create theme directory if it doesn't exist
if [ ! -d "$THEME_DIR" ]; then
    echo "📂 Creating theme directory..."
    mkdir -p "$THEME_DIR"
fi

# Copy theme file
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEME_FILE="$SCRIPT_DIR/islands-dark.json"

if [ ! -f "$THEME_FILE" ]; then
    echo "❌ Theme file not found: $THEME_FILE"
    exit 1
fi

echo "📋 Copying theme file..."
cp "$THEME_FILE" "$THEME_DIR/"

echo ""
echo "✅ Installation complete!"
echo ""
echo "To activate the theme:"
echo "1. Open Zed"
echo "2. Press Cmd+K then Cmd+T (macOS) or Ctrl+K then Ctrl+T (Linux)"
echo "3. Search for 'Islands Dark' and select it"
echo ""
echo "📖 For recommended settings and fonts, see README.md"
echo ""
