# Orca Hermes SSH Smoke Repo

This repository exists to test Orca SSH worktrees on `hermes-vps`.

## Intended Runtime

- Orca UI: local Windows desktop.
- Remote host: `hermes-vps` over Tailscale SSH.
- Remote clone root: `/home/dev/dev/repos`.
- Remote worktree root: `/home/dev/orca-worktrees`.
- Hermes runtime: `/usr/local/bin/hermes` on `hermes-vps`.
- QMD brain index: `godstack` / `brain` on `hermes-vps`.

## Agent Rules

- Keep changes tiny and inspectable.
- Prefer a single-file smoke change for first tests.
- Do not store secrets here.
- Verify with `scripts/smoke.sh`.
- If using Hermes, first confirm the stack brain path with:

```bash
hermes -z 'Answer with only the remote AI God Stack brain path.'
```

Expected answer:

```text
/home/dev/dev/AI-God-Stack
```
