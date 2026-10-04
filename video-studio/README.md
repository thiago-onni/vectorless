# IA DE OFÍCIO — Sistema de Produção de Vídeo

Sistema replicável para produzir vídeos de **casos de uso de IA por setor** (saúde, telecom, utilities, seguradoras, vendas, finanças...) em dois formatos:

| Formato | Duração | Proporção | Papel |
|---|---|---|---|
| **YouTube — "O Caso"** | 10–14 min | 16:9 | Prova completa: problema → agentes → build → testes → ROI |
| **Instagram — "O Corte"** | 30–75 s | 9:16 (split) | Um tópico do caso, um número, uma tela |

A tese da série, repetida em todo vídeo:

> **"Qual a melhor IA para colocar na mão do seu funcionário hoje?"**
> **"A que já conhece o trabalho dele."**

## Como funciona (3 etapas, sempre iguais)

```
 1. BRIEFING (você)          2. GUIDE (agente)               3. EDIÇÃO (agente)
 ┌─────────────────┐        ┌──────────────────────────┐     ┌───────────────────────────┐
 │ tema / setor    │        │ pesquisa de audiência    │     │ transcrição + alinhamento │
 │ caso de uso     │  ───▶  │ 3 hooks + título + thumb │ ──▶ │ cortes / retakes          │
 │ fluxo do app    │        │ roteiro cena a cena      │     │ layouts + hyperframes     │
 │ métricas-alvo   │        │ lista de B-roll a gravar │     │ legendas, música, SFX     │
 └─────────────────┘        │ 3 cortes de Instagram    │     │ export YT + IG + thumbs   │
                            └──────────────────────────┘     └───────────────────────────┘
                                       │                                 ▲
                                       ▼                                 │
                              VOCÊ GRAVA: A-roll (você falando) + B-roll (builder,
                              app rodando) + screenshots + métricas finais
```

### Etapa 1 — Briefing
Preencha [`templates/briefing.md`](templates/briefing.md) (10 minutos). Peça ao agente:
`/video-guide` + cole o briefing.

### Etapa 2 — GUIDE
O agente devolve um arquivo no formato [`templates/guide-roteiro.md`](templates/guide-roteiro.md): roteiro para teleprompter, marcações de layout/hyperframe por cena, e a lista do que gravar. Exemplo completo: [`exemplos/utilities-falta-de-energia.md`](exemplos/utilities-falta-de-energia.md).

### Etapa 3 — Gravação e edição
Grave seguindo o GUIDE, organize o material na estrutura de pastas de [`05-pipeline-edicao.md`](05-pipeline-edicao.md) e peça: `/video-edit projetos/<slug>`.

## Documentos do sistema

| # | Documento | Para quê |
|---|---|---|
| 01 | [Formato YouTube](01-formato-youtube.md) | Estrutura fixa em 8 blocos, intro-assinatura, layouts, ritmo |
| 02 | [Formato Instagram](02-formato-instagram.md) | Split-screen, 4 tipos de reel, safe zones |
| 03 | [Método de roteiro](03-metodo-roteiro.md) | Evidências de audiência, banco de hooks, onde usar cada um, thumbnail e título |
| 04 | [Design system](04-design-system.md) | Cores, tipografia, ícones de ROI/KPI/velocidade, catálogo de hyperframes, motion e som |
| 05 | [Pipeline de edição](05-pipeline-edicao.md) | Pastas, nomes de arquivo, o que o agente faz, EDL, checklist de QA |
| 06 | [Regras anti-slop](06-regras-anti-slop.md) | O que nunca sai num vídeo da série |

Templates: [`briefing.md`](templates/briefing.md) · [`guide-roteiro.md`](templates/guide-roteiro.md) · [`edl.yaml`](templates/edl.yaml)
Hyperframes de referência (HTML renderizável com HyperFrames): [`hyperframes/`](hyperframes/)

## Skills do Claude Code

- **`/video-guide`** ([.claude/skills/video-guide](../.claude/skills/video-guide/SKILL.md)): recebe o briefing e devolve o GUIDE.
- **`/video-edit`** ([.claude/skills/video-edit](../.claude/skills/video-edit/SKILL.md)): recebe a pasta do projeto gravado e entrega os vídeos editados.
