#!/usr/bin/env bash
# Uso: ./publicar.sh SEU_USUARIO_GITHUB
# Requer o GitHub CLI (gh) logado: https://cli.github.com
set -e
USER="${1:?Informe seu usuário do GitHub}"
git init -b main
git add .
git commit -m "feat: projeto final DevLinks"
gh repo create "$USER/devlinks" --public --source=. --push
echo "Repositório: https://github.com/$USER/devlinks"
