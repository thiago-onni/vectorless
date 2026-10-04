# 02 — Formato Instagram: "O Corte"

**9:16 · 1080×1920 · 30 fps · 30–75 s · um tópico por reel**

Cada episódio do YouTube gera **3 reels** com o mesmo material bruto (sem gravação extra, exceto 3 hooks curtos que o GUIDE já pede).

## 1. Layout-base: tela dividida

```
┌────────────────────────┐  0
│   SAFE ZONE (UI do IG) │  ← não colocar texto (0–220 px)
├────────────────────────┤  220
│                        │
│   SUPERIOR (visual)    │  ← builder, app, dashboard, hyperframe
│   1080 × 960           │     (de 220 a 1180)
│                        │
├──── barra de divisão ──┤  1180  (6 px, cor de destaque do setor)
│                        │
│   INFERIOR (você)      │  ← rosto, enquadramento fechado
│   1080 × 740           │     legendas grandes sobre esta área
│                        │
├────────────────────────┤  1500 (fim da área segura para legenda)
│   SAFE ZONE (UI do IG) │  ← não colocar texto (1500–1920)
└────────────────────────┘  1920
```

Variações (trocar a cada 3–5 s):

| Código | Composição | Uso |
|---|---|---|
| **S1** | Split padrão (visual em cima, você embaixo) | 60% do reel |
| **S2** | Você em tela cheia | Hook e CTA (máx. 3 s cada) |
| **S3** | Visual em tela cheia + você em círculo (220 px) | Momento "olha isso" no app |
| **S4** | Hyperframe em tela cheia | O número, a pergunta |
| **S5** | Split invertido (você em cima, visual embaixo) | Quebra de padrão, 1 vez por reel |

## 2. Os 4 tipos de reel

### R1 — "O caso em 60 s" (sempre gerado)
| Tempo | Conteúdo | Layout |
|---|---|---|
| 0–1,5 s | Texto-hook em tela + primeira frase | S2 ou S4 |
| 1,5–8 s | O problema do funcionário + um número do custo | S1 + `HF-NUM` |
| 8–20 s | O que a IA precisa saber para fazer o trabalho dele | S1 com `HF-AGENTS` em cima |
| 20–40 s | Builder rodando → app pronto | S3 / S1 (timelapse) |
| 40–55 s | Placar: 3 KPIs com ícones | S4 `HF-KPI` |
| 55–60 s | CTA: "episódio completo no YouTube — link na bio" | S2 |

### R2 — "Um número" (sempre gerado)
Um único dado chocante do caso, explicado em 30–40 s. Começa com o número gigante (`HF-NUM`), termina com a pergunta "e na sua empresa?" (`HF-QUESTION`).

### R3 — "Bastidor do builder" (sempre gerado)
Tela do Claude Code em cima, você embaixo comentando a decisão técnica mais interessante. Mostra o prompt/especificação, os agentes carregando (`HF-AGENTS`) e o primeiro resultado. 45–60 s.

### R4 — "A pergunta" (opcional)
Começa com a pergunta-assinatura da série ("qual a melhor IA para colocar na mão do seu funcionário?") e responde com o caso do setor. Bom para o primeiro reel de cada setor novo.

## 3. Regras do Instagram

- **0–1,5 s decide tudo**: texto-hook na tela desde o frame 1 (o reel começa sem som para muita gente). Nada de logo, vinheta ou "oi pessoal".
- Legenda queimada sempre ligada, **2–4 palavras por vez**, palavra-chave destacada na cor do setor.
- Ícone ao lado de todo número: ⏱ velocidade · 💰 ROI/custo · 📈 KPI · ✅ qualidade · 👤 pessoas (ver ícones em [04](04-design-system.md#4-ícones)).
- Troca visual a cada **2–3 s**.
- Música em −18 a −22 LUFS por baixo da voz; SFX curto (whoosh/pop) só em entrada de número.
- Último frame casa com o primeiro (loop): a última frase devolve para a pergunta inicial.
- Capa (frame de capa do reel): o número + 3 palavras, sem rosto cortado pela grade 3:4 do perfil (conteúdo importante no centro 1080×1440).

## 4. Carrossel de apoio (opcional, mesmo material)
8 slides 1080×1350: (1) hook com número, (2) o funcionário, (3) o custo, (4) o fluxo antes, (5) os agentes, (6) print do app, (7) placar de KPIs, (8) CTA. Gerado a partir dos mesmos hyperframes exportados como PNG.
