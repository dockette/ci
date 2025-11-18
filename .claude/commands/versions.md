---
description: Update Node.js version information in README.md
---

Run the `.scripts/versions.sh` script to collect Node.js, npm, and pnpm versions from all Docker images, then update the README.md file with the collected version information.

Steps:
1. Run `.scripts/versions.sh --no-build` to collect versions from existing images
2. Parse the output (format: `version|node_version|npm_version|pnpm_version`)
3. Update the NodeJS table in README.md with the actual version numbers
4. Keep the same table structure with columns: NodeJS | OS | Tag | Node Version | npm Version | pnpm Version | Dockerfile
5. For versions with data, show the actual versions (e.g., `NodeJS 24 (v22.16.0) | Alpine v3.22 | node24 | v22.16.0 | 11.4.2 | 10.9.0`)
6. For versions without data (N/A), keep them with dash placeholders (e.g., `NodeJS 14 | Alpine v3.12 | node14 | - | - | -`)
7. Show a summary of what was updated

Important: Only update versions 15-24 in the table, leave versions 10-14 as they are with dashes.
