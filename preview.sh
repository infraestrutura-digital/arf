#!/usr/bin/env bash
# Inicia o `quarto preview` com recarga ao editar arquivos em _partials/.
#
# Em projetos de site, o preview só re-renderiza quando a própria página muda;
# alterações em arquivos incluídos (_partials/*.qmd) não disparam nada. Este
# script observa _partials/ e atualiza a data das páginas que incluem o parcial
# alterado, o que faz o preview re-renderizá-las.
#
# Uso: ./preview.sh [opções do quarto preview]   (requer fswatch: brew install fswatch)
set -euo pipefail
cd "$(dirname "$0")"

on_change() {
  while IFS= read -r -d '' f; do
    name=$(basename "$f")
    grep -rl --include='*.qmd' --exclude-dir=_partials --exclude-dir=_site \
      "_partials/$name" . | grep -v '^\./arf-pdf\.qmd$' | while IFS= read -r page; do
        touch "$page"
      done || true
  done
}

fswatch -0 _partials > >(on_change) &
watcher=$!
trap 'kill "$watcher" 2>/dev/null || true' EXIT

quarto preview "$@"
