# install.ps1 - Universal AI Agent Skills Installer for Windows
[CmdletBinding()]
param (
    [ValidateSet("all", "antigravity", "claude", "cursor", "hermes", "workspace")]
    [string]$Target = "all",
    [ValidateSet("copy", "symlink")]
    [string]$Mode = "copy",
    [string]$CustomPath = ""
)

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$SkillsSrc = Join-Path $ScriptDir "skills"

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "  UNIVERSAL AI AGENT SKILLS INSTALLER (WINDOWS)           " -ForegroundColor Cyan
Write-Host "  Total Skills: 980 | Mode: $Mode | Target: $Target      " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

function Install-ToPath($destDir, $name) {
    Write-Host "[+] Installing skills for $name -> $destDir" -ForegroundColor Green
    if (-not (Test-Path $destDir)) {
        New-Item -ItemType Directory -Path $destDir -Force | Out-Null
    }
    
    if ($Mode -eq "symlink") {
        Write-Host "    Creating directory symlinks (requires Developer Mode or Admin)..." -ForegroundColor Yellow
        Get-ChildItem -Directory $SkillsSrc | ForEach-Object {
            $destSub = Join-Path $destDir $_.Name
            if (-not (Test-Path $destSub)) {
                New-Item -ItemType SymbolicLink -Path $destSub -Target $_.FullName | Out-Null
            }
        }
    } else {
        Write-Host "    Copying skill directories..." -ForegroundColor Yellow
        Copy-Item -Path "$SkillsSrc\*" -Destination $destDir -Recurse -Force
    }
    Write-Host "    [OK] Successfully configured for $name!" -ForegroundColor Green
}

if ($CustomPath -ne "") {
    Install-ToPath $CustomPath "Custom Destination"
    exit 0
}

# 1. Google Antigravity
if ($Target -eq "all" -or $Target -eq "antigravity") {
    $agPath = Join-Path $HOME ".agent\skills"
    Install-ToPath $agPath "Google Antigravity"
}

# 2. Claude Code CLI
if ($Target -eq "all" -or $Target -eq "claude") {
    $claudePath = Join-Path $HOME ".claude\skills"
    Install-ToPath $claudePath "Claude Code CLI"
    # Also copy CLAUDE.md to ~/.claude/
    Copy-Item -Path (Join-Path $ScriptDir "CLAUDE.md") -Destination (Join-Path $HOME ".claude\CLAUDE.md") -Force
}

# 3. Hermes AI
if ($Target -eq "all" -or $Target -eq "hermes") {
    $hermesPath = Join-Path $HOME ".hermes\skills"
    Install-ToPath $hermesPath "Hermes AI"
}

# 4. Active Workspace
if ($Target -eq "workspace") {
    $wsPath = Join-Path (Get-Location) ".agent\skills"
    Install-ToPath $wsPath "Current Workspace"
}

Write-Host "`nAll selected AI Agent skills have been installed successfully!`n" -ForegroundColor Cyan
