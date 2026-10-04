# video-opus — Série "IA de Ofício"

Projeto de produção de vídeo: casos de uso de IA por setor, em formato YouTube (16:9) e Instagram (9:16 split).

## Onde está cada coisa
- `video-studio/README.md`: visão geral e fluxo (briefing → GUIDE → gravação → edição)
- `video-studio/01..06-*.md`: formatos, método de roteiro, design system, pipeline de edição, regras anti-slop
- `video-studio/templates/`: briefing, GUIDE, EDL
- `video-studio/hyperframes/`: composições HyperFrames reutilizáveis
- `video-studio/projetos/<data>-<setor>-<slug>/`: um episódio por pasta (material bruto e `out/` ficam fora do git)

## Comandos
- `/video-guide` + briefing → gera `projetos/<...>/01_guide.md`
- `/video-edit video-studio/projetos/<...>` → edita e entrega em `out/`

## Regras
- Nenhum número na tela sem estar em `metricas/metricas.yaml` ou na tabela de evidências do GUIDE.
- Nada é publicado automaticamente; revisão humana final sempre.
- Ferramentas locais: ffmpeg/ffprobe, Node ≥ 22 (`npx hyperframes`), Python 3 com `faster-whisper`.
