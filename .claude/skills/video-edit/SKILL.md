---
name: video-edit
description: Edita um episódio da série "IA de Ofício" a partir da pasta do projeto gravado (A-roll do apresentador, B-roll do builder e do app, screenshots, metricas.yaml) seguindo o GUIDE e os formatos padrão — gera o vídeo YouTube 16:9, 3 reels 9:16 em tela dividida, hyperframes, legendas, thumbnails e relatório de QA. Use quando o usuário entregar o material gravado e pedir edição, montagem, corte, reels ou export.
---

# /video-edit — Material gravado → vídeos prontos

## Antes de começar, leia
- `video-studio/05-pipeline-edicao.md` — pastas, convenções de gravação ("cena N", "de novo", "thumb"), etapas, QA
- `video-studio/01-formato-youtube.md` e `02-formato-instagram.md` — layouts e ritmo
- `video-studio/04-design-system.md` — tokens, hyperframes, som, legendas
- `video-studio/hyperframes/README.md` — templates e contrato HyperFrames
- `video-studio/06-regras-anti-slop.md`
- O `01_guide.md` e o `metricas/metricas.yaml` do projeto

## Entrada
Caminho da pasta do projeto (ex.: `video-studio/projetos/2026-10-10-utilities-falta-de-energia`).

## Passos
1. **Inventário** (`ffprobe`): liste arquivos, duração, resolução, fps. Compare com a lista de gravação do GUIDE. Se faltar algo essencial (A-roll, metricas.yaml), pare e diga exatamente o que falta. Falta de B-roll opcional: siga e registre no QA.
2. **Transcrição** com timestamps por palavra (faster-whisper, modelo `large-v3` ou `medium`, idioma `pt`). Salve em `out/work/transcript.json`.
3. **Alinhamento**: localize "cena N", "hook A/B/C", "thumb" e "de novo". Para cada cena do GUIDE, escolha a última tomada completa; confirme por similaridade com o texto do GUIDE. Cenas não encontradas vão para o QA.
4. **Limpeza**: corte silêncios > 400 ms (mantenha 150 ms de respiro), hesitações e repetições.
5. **EDL**: escreva `out/edl.yaml` no formato de `video-studio/templates/edl.yaml`, com layout, hyperframe e B-roll de cada trecho conforme o GUIDE. Respeite as regras de ritmo (troca a cada 4–8 s no YT, 2–3 s no IG; L1 ≤ 12 s; você em tela ≤ 45%).
6. **Hyperframes**: instancie os templates de `video-studio/hyperframes/` com valores do `metricas.yaml` e das evidências do GUIDE. Tipos sem template: crie seguindo o catálogo e salve o template novo em `video-studio/hyperframes/` para reuso.
7. **Composição**: monte com HyperFrames (rota `talking-head-recut` ou `general-video`; carregue as skills do HyperFrames com `npx hyperframes skills update <rota>` se disponível). Sem HyperFrames, renderize os hyperframes isolados e monte com ffmpeg (`overlay`, `xstack`, `zoompan`/`crop` para L7 e punch-in).
8. **Áudio**: `afftdn` com o perfil de ruído dos 10 s iniciais, `loudnorm` (−14 LUFS YT / −13 IG, −1 dBTP), música com `sidechaincompress` sob a voz, SFX do design system.
9. **Legendas**: `out/youtube.srt` + legendas queimadas nos reels (2–4 palavras, destaque na palavra-chave).
10. **Reels**: R1, R2, R3 em 1080×1920 com split (visual 220–1180 px, você 1180–1920 px, recorte do A-roll centrado no rosto), texto dentro das safe zones.
11. **Thumbnails**: 3 variações (A/B/C do GUIDE) a partir dos frames marcados "thumb", 1280×720.
12. **Blur**: verifique frames do builder e do app por chaves, tokens, e-mails, CPFs e nomes; aplique blur e registre no QA.
13. **QA**: preencha o checklist de `05-pipeline-edicao.md` em `out/qa_report.md`, com medições reais (LUFS, % de tempo em tela, maior trecho sem troca visual) e a lista de pendências.

## Regras
- Nenhum número aparece na tela sem estar no `metricas.yaml` ou na tabela de evidências do GUIDE.
- Não publique nem envie nada para fora. Entregue em `out/` e peça a revisão humana final.
- Pergunte antes de apagar material bruto.

## Saída para o usuário
Caminhos dos arquivos em `out/`, duração de cada vídeo, as pendências do QA e o lembrete de revisão humana antes de publicar.
