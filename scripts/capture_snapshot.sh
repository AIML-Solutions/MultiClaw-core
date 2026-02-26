#!/usr/bin/env bash
set -euo pipefail

TS="$(date -u +%Y-%m-%d)"
NOW="$(date -u '+%Y-%m-%d %H:%M:%S UTC')"
BASE="$HOME/.openclaw/workspace/projects/MultiClaw/reports/$TS"
mkdir -p "$BASE"
OUT="$BASE/AIML-Times-$TS-auto.raw.log"

{
  echo "# AUTO SNAPSHOT $NOW"
  echo
  echo "## openclaw status --all"
  openclaw status --all
  echo
  echo "## gateway usage-cost"
  openclaw gateway usage-cost --days 1 --json
  echo
  echo "## skill inventory"
  clawhub list
  echo
  echo "## quant infra"
  cd "$HOME/.openclaw/workspace/projects/quantconnect/infra" && docker compose ps
  echo
  echo "## lean whoami"
  ~/.local/bin/lean whoami || true
} > "$OUT" 2>&1

echo "Wrote $OUT"
