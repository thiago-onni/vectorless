#!/usr/bin/env bash
# Migra o sistema "IA de Ofício" para um projeto local do Claude Code.
# Uso:  bash setup-local.sh [pasta-destino]
# Padrão: /Users/tpsantos/claude/video-opus
set -euo pipefail

DEST="${1:-/Users/tpsantos/claude/video-opus}"
REPO="${REPO:-https://github.com/thiago-onni/vectorless.git}"
BRANCH="${BRANCH:-claude/video-format-youtube-instagram-0w8lxk}"

if [ -d "$DEST" ] && [ -n "$(ls -A "$DEST" 2>/dev/null)" ]; then
  echo "A pasta $DEST já existe e não está vazia. Nada foi alterado." >&2
  exit 1
fi

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "→ Baixando $BRANCH de $REPO"
git clone --quiet --depth 1 --branch "$BRANCH" "$REPO" "$TMP/src"

echo "→ Copiando para $DEST"
mkdir -p "$DEST/.claude"
cp -R "$TMP/src/video-studio" "$DEST/"
cp -R "$TMP/src/.claude/skills" "$DEST/.claude/"
mv "$DEST/video-studio/local/CLAUDE.md" "$DEST/CLAUDE.md"
mv "$DEST/video-studio/local/settings.json" "$DEST/.claude/settings.json"
mv "$DEST/video-studio/local/gitignore" "$DEST/.gitignore"
rm -rf "$DEST/video-studio/local" "$DEST/video-studio/setup-local.sh"

echo "→ Criando repositório git local"
git -C "$DEST" init --quiet
git -C "$DEST" add -A
git -C "$DEST" -c user.name="${GIT_AUTHOR_NAME:-video-opus}" -c user.email="${GIT_AUTHOR_EMAIL:-video-opus@local}" \
  commit --quiet -m "Importa sistema IA de Ofício (formatos, método, skills, EP01 telecom)"

echo
echo "→ Verificando ferramentas (nada é instalado automaticamente)"
missing=0
check() { if command -v "$1" >/dev/null 2>&1; then echo "  ✔ $1"; else echo "  ✖ $1 — instale com: $2"; missing=1; fi; }
check ffmpeg  "brew install ffmpeg"
check ffprobe "brew install ffmpeg"
check node    "brew install node@22"
check python3 "brew install python"
if command -v node >/dev/null 2>&1; then
  major="$(node -p 'process.versions.node.split(".")[0]')"
  [ "$major" -ge 22 ] && echo "  ✔ node $major (≥ 22)" || { echo "  ✖ node $major — HyperFrames precisa de Node ≥ 22"; missing=1; }
fi
if command -v python3 >/dev/null 2>&1 && python3 -c "import faster_whisper" 2>/dev/null; then
  echo "  ✔ faster-whisper"
else
  echo "  ✖ faster-whisper — instale com: python3 -m pip install faster-whisper"; missing=1
fi

echo
echo "Pronto: $DEST"
[ "$missing" -eq 1 ] && echo "Instale os itens marcados com ✖ antes de rodar /video-edit."
echo "Próximo passo:  cd \"$DEST\" && claude"
