#!/bin/bash

VAULT_DIR="/Users/prashantsharma/Documents/Obsidian Vault"
LOG_FILE="$VAULT_DIR/backup_debug.log"

{
  echo "=== Backup started at $(date) ==="
  cd "$VAULT_DIR" || exit

  /opt/homebrew/bin/git add .
  /opt/homebrew/bin/git commit -m "Auto-backup: $(date '+%Y-%m-%d %H:%M:%S')" || echo "Nothing to commit"
  /opt/homebrew/bin/git push origin main
  echo "=== Backup finished at $(date) ==="
} >> "$LOG_FILE" 2>&1
