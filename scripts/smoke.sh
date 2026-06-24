#!/usr/bin/env bash
set -euo pipefail

printf 'repo=%s\n' "$(basename "$(git rev-parse --show-toplevel)")"
printf 'branch=%s\n' "$(git branch --show-current)"
printf 'host=%s\n' "$(hostname)"
printf 'whoami=%s\n' "$(whoami)"
printf 'hermes=%s\n' "$(command -v hermes || true)"
printf 'codex=%s\n' "$(command -v codex || true)"
printf 'claude=%s\n' "$(command -v claude || true)"
printf 'qmd=%s\n' "$(command -v qmd || true)"

test "$(hostname)" = "hermes-vps"
test -x "$(command -v hermes)"
test -x "$(command -v qmd)"
