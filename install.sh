#!/usr/bin/env bash
# install.sh - Universal AI Agent Skills Installer for Linux & macOS
set -euo pipefail

TARGET="${1:-all}"
MODE="${2:-copy}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_SRC="${SCRIPT_DIR}/skills"

echo -e "\033[1;36m==========================================================\033[0m"
echo -e "\033[1;36m  UNIVERSAL AI AGENT SKILLS INSTALLER (LINUX/MACOS)       \033[0m"
echo -e "\033[1;36m  Total Skills: 980 | Mode: ${MODE} | Target: ${TARGET}   \033[0m"
echo -e "\033[1;36m==========================================================\033[0m"

install_to_path() {
    local dest_dir="$1"
    local name="$2"
    echo -e "\033[1;32m[+] Installing skills for ${name} -> ${dest_dir}\033[0m"
    mkdir -p "${dest_dir}"
    
    if [ "${MODE}" = "symlink" ]; then
        echo -e "\033[1;33m    Creating symlinks...\033[0m"
        for d in "${SKILLS_SRC}"/*; do
            if [ -d "$d" ]; then
                local bname=$(basename "$d")
                ln -sf "$d" "${dest_dir}/${bname}"
            fi
        done
    else
        echo -e "\033[1;33m    Copying skill directories...\033[0m"
        cp -r "${SKILLS_SRC}"/* "${dest_dir}/"
    fi
    echo -e "\033[1;32m    [OK] Successfully configured for ${name}!\033[0m"
}

# 1. Antigravity
if [ "${TARGET}" = "all" ] || [ "${TARGET}" = "antigravity" ]; then
    install_to_path "${HOME}/.agent/skills" "Google Antigravity"
fi

# 2. Claude Code CLI
if [ "${TARGET}" = "all" ] || [ "${TARGET}" = "claude" ]; then
    install_to_path "${HOME}/.claude/skills" "Claude Code CLI"
    cp "${SCRIPT_DIR}/CLAUDE.md" "${HOME}/.claude/CLAUDE.md"
fi

# 3. Hermes AI
if [ "${TARGET}" = "all" ] || [ "${TARGET}" = "hermes" ]; then
    install_to_path "${HOME}/.hermes/skills" "Hermes AI"
fi

# 4. Workspace
if [ "${TARGET}" = "workspace" ]; then
    install_to_path "$(pwd)/.agent/skills" "Current Workspace"
fi

echo -e "\n\033[1;36mAll selected AI Agent skills have been installed successfully!\033[0m\n"
