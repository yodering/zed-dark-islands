# Islands Dark Zed Theme Installer (PowerShell)
# Installs the Islands Dark theme for Zed editor on Windows

$ErrorActionPreference = "Stop"

Write-Host "🏝️  Islands Dark Theme Installer for Zed" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Determine the theme directory
$themeDir = "$env:APPDATA\Zed\themes"

Write-Host "📁 Theme directory: $themeDir"
Write-Host ""

# Create theme directory if it doesn't exist
if (-not (Test-Path $themeDir)) {
    Write-Host "📂 Creating theme directory..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Path $themeDir -Force | Out-Null
}

# Copy theme file
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$themeFile = Join-Path $scriptDir "islands-dark.json"

if (-not (Test-Path $themeFile)) {
    Write-Host "❌ Theme file not found: $themeFile" -ForegroundColor Red
    exit 1
}

Write-Host "📋 Copying theme file..." -ForegroundColor Yellow
Copy-Item $themeFile $themeDir -Force

Write-Host ""
Write-Host "✅ Installation complete!" -ForegroundColor Green
Write-Host ""
Write-Host "To activate the theme:"
Write-Host "1. Open Zed"
Write-Host "2. Press Ctrl+K then Ctrl+T"
Write-Host "3. Search for 'Islands Dark' and select it"
Write-Host ""
Write-Host "📖 For recommended settings and fonts, see README.md"
Write-Host ""
