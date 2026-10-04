# 04 — Design System

Tudo que se repete entre episódios. Se a marca (ex.: brand kit próprio) já tiver cores e fontes, troque os valores dos tokens e mantenha a estrutura.

## 1. Tokens

```css
:root {
  /* base */
  --bg:        #0B0F14;   /* fundo de hyperframes */
  --surface:   #141A22;   /* cartões */
  --line:      #263040;
  --text:      #F4F6F8;
  --muted:     #8A96A8;

  /* semântica fixa da série */
  --before:    #FF5A5F;   /* ANTES, custo, problema */
  --after:     #2BD99F;   /* DEPOIS, ganho, resultado */
  --highlight: #FFD23F;   /* palavra-chave na legenda, número em destaque */

  /* cor do setor (troca por episódio) */
  --sector:    var(--sector-utilities);
  --sector-saude:       #3FA7FF;
  --sector-telecom:     #9B6BFF;
  --sector-utilities:   #FFB020;
  --sector-seguros:     #22C3C3;
  --sector-vendas:      #FF7A45;
  --sector-financas:    #4CC38A;
  --sector-industria:   #A0AEC0;
  --sector-publico:     #5B8DEF;
}
```

A cor do setor aparece em: faixa da thumbnail, barra divisória do split no Instagram, crachá do episódio, sublinhado da palavra-chave. Vermelho/verde ficam **só** para antes/depois.

## 2. Tipografia
- **Números e títulos**: Inter Tight / Space Grotesk, peso 800, tabular-nums.
- **Texto e legendas**: Inter, peso 600–700.
- **Código / builder**: JetBrains Mono.
- Escala (1080p): número herói 220 px · título 96 px · subtítulo 48 px · legenda 56 px (YouTube) / 72 px (IG) · rótulo 28 px em caixa alta, espaçamento 0,08em.

## 3. Catálogo de hyperframes

Hyperframe = composição gráfica animada (HTML renderizado em vídeo via [HyperFrames](https://hyperframes.heygen.com)). Cada tipo tem código fixo usado no GUIDE e na EDL. Referências renderizáveis em [`hyperframes/`](hyperframes/).

| Código | Nome | Conteúdo | Animação | Duração |
|---|---|---|---|---|
| `HF-SIGNATURE` | Assinatura | "A IA que já conhece o trabalho dele." + crachá do episódio | Frase entra palavra por palavra, crachá sobe | 3,5 s |
| `HF-NUM` | Número herói | Número + unidade + rótulo de 1 linha + fonte em rodapé | Count-up 0→valor em 0,8 s, ease-out, leve overshoot | 3–5 s |
| `HF-QUESTION` | Pergunta de insight | Pergunta em 2 linhas no máx., "?" na cor do setor | Linhas sobem com blur→nítido, 1 s de silêncio depois | 3–4 s |
| `HF-QUOTE` | Frase de impacto | Frase ≤ 12 palavras, 1 palavra destacada | Marca-texto passa sobre a palavra destacada | 3 s |
| `HF-EVIDENCE` | Evidência | Dado + print recortado da fonte (relatório, notícia, comentário) + link curto | Print entra inclinado 4°, dado sobe por cima | 4–5 s |
| `HF-FLOW` | Fluxo | Passos em caixas conectadas; gargalo pulsa em `--before` | Desenho progressivo das setas (stroke-dashoffset) | 5–8 s |
| `HF-AGENTS` | Agentes carregando | Cartões de agente: nome, ícone, "conhece: ..." e barra de loading | Cartões entram em cascata, barras enchem, ✓ verde | 4–6 s |
| `HF-KPI` | Grade de KPIs | 2–4 cartões com ícone, ANTES → DEPOIS | Cartões em cascata, número antes riscado, depois count-up | 5 s |
| `HF-ROI` | Placar | 4 cartões do placar padrão + payback em destaque | Placar acende cartão por cartão (som de tick) | 8–10 s |
| `HF-COMPARE` | Antes × depois | Duas colunas com rótulos fixos | Wipe vertical da esquerda para direita | 4–6 s |
| `HF-CHAPTER` | Capítulo | Número + nome do bloco, barra de progresso | Barra avança até o capítulo atual | 1,5 s |
| `HF-LOWER` | Lower-third | Nome/função ou dado curto sobre você (L5) | Slide da esquerda, sai após 4 s | 4 s |
| `HF-PROGRESS` | Barra persistente | Barra fina no topo com 6 segmentos dos capítulos | Avança continuamente | vídeo todo (blocos 2–7) |

## 4. Ícones

Linha (stroke 2 px), estilo Lucide/Phosphor, sempre os mesmos para os mesmos conceitos:

| Conceito | Ícone | Lucide |
|---|---|---|
| Velocidade / tempo | cronômetro | `timer` |
| ROI / custo / economia | moeda | `circle-dollar-sign` |
| KPI / crescimento | gráfico subindo | `trending-up` |
| Qualidade / acerto | check em círculo | `circle-check` |
| Construção | ferramenta | `wrench` |
| Pessoas / funcionário | pessoa | `user` |
| Agente de IA | robô/chip | `bot` |
| Dados / sistema | banco | `database` |
| Risco / erro | alerta | `triangle-alert` |
| Conformidade / norma | escudo | `shield-check` |

## 5. Motion
- Entradas: 300–450 ms, `cubic-bezier(.2,.8,.2,1)`. Saídas: 200 ms, mais rápidas que as entradas.
- Nada gira, quica ou brilha sem motivo. Movimento serve para indicar ordem de leitura.
- Zoom de tela (L7): máx. 2,2×, 600 ms, sempre terminando parado ≥ 1,5 s no alvo para leitura.
- Timelapse do builder: 4–16×, com contador de tempo real no canto ("+2h14 de construção").

## 6. Som
- **Assinatura sonora**: 1 som curto (≤ 1,2 s) na vinheta, sempre o mesmo.
- SFX permitidos: whoosh (troca de layout grande), pop (entrada de número), tick (cartões do placar), digitação suave (builder). Máx. 1 SFX a cada 4 s; em excesso, cansa (crítica feita ao reel do vídeo de referência).
- Música: instrumental, sem voz, −20 LUFS sob a fala (ducking automático), sobe para −14 nos timelapses. Corte de cena preferencialmente no tempo forte da música.
- Voz final: −14 LUFS integrado (YouTube) / −13 (Instagram), pico −1 dBTP.

## 7. Legendas
- YouTube: legenda queimada opcional (ligada nos 60 s iniciais), SRT completo sempre enviado.
- Instagram: sempre queimada, 2–4 palavras por vez, palavra-chave em `--highlight`, posição na metade inferior dentro da safe zone.
