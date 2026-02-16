# Islands Dark for Zed

A dark color theme for Zed inspired by JetBrains' Islands Dark theme. Features glass-like blurred panels, a deep dark canvas, and warm syntax highlighting.

![Islands Dark for Zed](../assets/CleanShot%202026-02-14%20at%2021.47.05@2x.png)

## Features

- Deep dark canvas (`#131217`) with floating blurred panels
- Glass-effect semi-transparent backgrounds
- Native Zed blur support for modern aesthetic
- Warm syntax highlighting with comprehensive language support
- Color-matched collaborative cursors and selections

## Installation

### Option 1: Manual Installation (Recommended)

1. **Copy the theme file to your Zed themes directory:**

   **macOS/Linux:**
   ```bash
   mkdir -p ~/.config/zed/themes
   cp islands-dark.json ~/.config/zed/themes/
   ```

   **Windows:**
   ```powershell
   New-Item -ItemType Directory -Path "$env:APPDATA\Zed\themes" -Force
   Copy-Item islands-dark.json "$env:APPDATA\Zed\themes\"
   ```

2. **Select the theme in Zed:**
   - Open Zed
   - Press `Cmd+K` then `Cmd+T` (macOS) or `Ctrl+K` then `Ctrl+T` (Windows/Linux)
   - Search for "Islands Dark" and select it

### Option 2: Clone and Install

```bash
# Clone the repository
git clone https://github.com/bwya77/vscode-dark-islands.git
cd vscode-dark-islands/zed-theme

# Copy to Zed themes directory
# macOS/Linux:
mkdir -p ~/.config/zed/themes
cp islands-dark.json ~/.config/zed/themes/

# Windows (PowerShell):
# New-Item -ItemType Directory -Path "$env:APPDATA\Zed\themes" -Force
# Copy-Item islands-dark.json "$env:APPDATA\Zed\themes\"
```

## Recommended Settings

For the best experience, add these settings to your Zed settings file (`Cmd+,` or `Ctrl+,` to open settings):

```json
{
  "theme": "Islands Dark",
  "buffer_font_family": "IBM Plex Mono",
  "buffer_font_size": 14,
  "ui_font_size": 14,
  "terminal": {
    "font_family": "FiraCode Nerd Font Mono",
    "font_size": 13
  }
}
```

### Install Recommended Fonts

This theme looks best with these fonts:

- **IBM Plex Mono** — for the editor
- **FiraCode Nerd Font Mono** — for the terminal

Download and install these fonts separately, or use your preferred monospace fonts.

## Customization

You can customize specific colors using Zed's `theme_overrides` setting. For example:

```json
{
  "experimental.theme_overrides": {
    "background.appearance": "blurred",
    "background": "#131217",
    "editor.background": "#181a1dD9"
  }
}
```

## What's Different from VSCode Version?

The Zed version maintains the color scheme and overall aesthetic of the VSCode theme but with some differences:

### ✅ Ported Features:
- All color scheme colors
- Syntax highlighting (warm colors, comprehensive language support)
- Blur/glass effects (using Zed's native blur support)
- Semi-transparent panels
- Deep dark canvas background

### ❌ Not Available in Zed:
- Custom rounded corner radii (Zed has built-in rounded corners)
- Pill-shaped UI elements
- Custom animations and transitions
- Scrollbar thumb customization
- Tab close button fade effects
- Custom drop shadows
- Breadcrumb hover effects

Zed's blur implementation may vary by operating system. If blur doesn't work on your system, the theme will still look great with solid semi-transparent backgrounds.

## Troubleshooting

### Theme doesn't appear in theme selector
- Make sure the file is in the correct directory (`~/.config/zed/themes` on macOS/Linux)
- Restart Zed
- Check that the JSON file is valid

### Blur effects not working
- Blur support varies by operating system and compositor
- Try toggling `"background.appearance": "blurred"` in your theme overrides
- On Linux, ensure your window manager/compositor supports transparency

### Colors look different than VSCode
- Zed's rendering may differ slightly from VSCode
- You can fine-tune colors using `experimental.theme_overrides` in your settings

## Credits

Based on the [Islands Dark VSCode theme](https://github.com/bwya77/vscode-dark-islands) by bwya77, inspired by [JetBrains Islands Dark](https://www.jetbrains.com/).

## License

MIT
