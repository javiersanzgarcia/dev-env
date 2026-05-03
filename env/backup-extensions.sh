#!/usr/bin/env bash
# Backup VS Code extensions list (installed extensions, not enable/disable state)
# Note: enable/disable state is stored in state.vscdb (LevelDB) and cannot be
# easily exported/imported. Use .vscode/extensions.json for recommendations.

set -euo pipefail

BACKUP_FILE="$HOME/.config/Code/User/globalStorage/extensions-backup.txt"

echo "Backing up installed VS Code extensions..."
code --list-extensions > "$BACKUP_FILE"

echo "Extensions backed up to: $BACKUP_FILE"
echo "Total extensions: $(wc -l < "$BACKUP_FILE")"
