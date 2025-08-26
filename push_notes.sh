


VAULT_DIR="$HOME/path/to/ObsidianVault"

cd "$VAULT_DIR" || exit



git commit -m "Auto-backup: $(date '+%Y-%m-%d %H:%M:%S')" || echo "Nothing to commit"

git push origin main
