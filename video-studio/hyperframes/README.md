# Hyperframes de referência

Sub-composições [HyperFrames](https://hyperframes.heygen.com) (HTML → vídeo) dos tipos centrais do [catálogo](../04-design-system.md#3-catálogo-de-hyperframes). O agente `/video-edit` copia o arquivo, troca os `{{PLACEHOLDERS}}` e conecta a composição na timeline do projeto.

| Arquivo | Tipo | Duração | Placeholders |
|---|---|---|---|
| `hf-num.html` | `HF-NUM` | 4 s | `ID VALOR PREFIXO UNIDADE ROTULO FONTE SECTOR` |
| `hf-agents.html` | `HF-AGENTS` | 5 s | `ID SECTOR AGENTE_1..3 CONHECE_1..3` |
| `hf-roi.html` | `HF-ROI` | 9 s | `ID SECTOR VEL_* ROI_* QUAL_* CONS_*` |

Os demais tipos (`HF-QUESTION`, `HF-QUOTE`, `HF-EVIDENCE`, `HF-FLOW`, `HF-KPI`, `HF-COMPARE`, `HF-CHAPTER`, `HF-LOWER`, `HF-SIGNATURE`, `HF-PROGRESS`) seguem a mesma estrutura e as especificações do catálogo. O agente cria esses arquivos no primeiro episódio e os salva nesta pasta para reuso.

## Convenções seguidas (contrato do HyperFrames)
- Arquivo inteiro é um único `<template>`; `<style>` e `<script>` (inclusive o GSAP) ficam dentro dele.
- Raiz com `data-composition-id`, estilizada só por `#root`; fundo em um elemento `.clip` próprio.
- Todo `.clip` tem `data-start`, `data-duration` e `data-track-index`.
- Uma única `gsap.timeline({ paused: true })` registrada em `window.__timelines[ID]`; sem transições CSS, `repeat` ou aleatoriedade (o render faz seek quadro a quadro).
- Fontes com `@font-face` apontando para `assets/fonts/` do projeto (Inter / Inter Tight em `.woff2`).
- `ID` deve ser único por instância (ex.: `c01-num`), porque também prefixa as classes.

## Validar e renderizar
```bash
npx hyperframes lint ./compositions        # valida o HTML
npx hyperframes preview                    # estúdio no navegador
npx hyperframes render -c ./compositions/c01-num.html -o out/hf/c01-num.mp4
```
Para 9:16 (Instagram), duplique o arquivo com `data-width="1080" data-height="1920"` e ajuste o layout para a metade superior do split (ver [02](../02-formato-instagram.md)).
