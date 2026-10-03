# 01 — Formato YouTube: "O Caso"

**16:9 · 1920×1080 · 30 fps · 10–14 min · um caso de uso por episódio**

A estrutura é sempre a mesma. O que muda é o setor, o caso e os números. O público aprende a ler o formato e passa a confiar nele: sabe que no fim vem o placar de ROI.

## 1. Estrutura fixa em 8 blocos

A barra de progresso no topo da tela mostra os capítulos 2–7 (inspirada no reel que marcava a linha do tempo da história). Ela usa o efeito de "progresso investido": quem viu metade da barra tende a ficar até o placar.

| # | Bloco | Tempo | Objetivo | Layout dominante | Hyperframes obrigatórios |
|---|---|---|---|---|---|
| 0 | **Cold open** | 0:00–0:20 | Mostrar o resultado antes do problema | L3 → L2 | `HF-NUM` (o número final), `HF-QUESTION` |
| 1 | **Assinatura** | 0:20–0:35 | Mesma frase, todo episódio | L1 + vinheta 3 s | `HF-SIGNATURE` |
| 2 | **O ofício** | 0:35–2:30 | Quem é o funcionário, como é o dia dele, quanto custa o problema | L2 / L5 | `HF-EVIDENCE`, `HF-NUM`, `HF-QUESTION` |
| 3 | **Raio-X do processo** | 2:30–4:00 | Fluxo atual passo a passo, onde trava | L7 / L4 | `HF-FLOW` (as-is), `HF-NUM` (gargalo) |
| 4 | **Desenho dos agentes** | 4:00–5:45 | Quais agentes, o que cada um sabe, que dados usam | L3 / L2 | `HF-FLOW` (to-be), `HF-AGENTS` |
| 5 | **Construção** | 5:45–8:00 | Builder rodando (Claude Code), decisões, especificação | L6 / L4 | `HF-CHAPTER`, `HF-QUOTE` (a decisão-chave) |
| 6 | **Teste e evidência** | 8:00–10:00 | App executando com caso real, erro encontrado e corrigido | L4 / L8 | `HF-COMPARE`, `HF-KPI` |
| 7 | **O placar** | 10:00–11:30 | ROI, payback, velocidade, qualidade | L3 / L7 | `HF-ROI`, `HF-KPI` |
| 8 | **Lição + próximo** | 11:30–12:30 | Uma lição transferível + gancho do próximo episódio | L1 / L2 | `HF-QUOTE`, end-screen |

Regra do bloco 3 → 4: sempre terminar o raio-X com uma **pergunta de insight** em tela cheia (`HF-QUESTION`) que o bloco 4 responde.

## 2. A introdução-assinatura (bloco 1) — texto fixo

Gravada **uma vez por episódio**, sempre com as mesmas palavras, mudando só o que está entre colchetes:

> "Toda empresa me faz a mesma pergunta: **qual a melhor IA para colocar na mão do meu funcionário hoje?**
> A minha resposta é sempre a mesma: **a que já conhece o trabalho dele.**
> Hoje o trabalho é de [FUNÇÃO], em [SETOR]. E eu vou construir essa IA na sua frente."

Visual fixo:
1. 0–3 s: vinheta (logo da série + som-assinatura, ver [04-design-system](04-design-system.md#som)).
2. Pergunta aparece palavra por palavra sobre L1 (você em tela cheia).
3. Na resposta, corte seco para `HF-SIGNATURE`: fundo escuro, a frase "A IA que já conhece o trabalho dele." e o crachá do episódio: `[SETOR] · [FUNÇÃO] · EP. NN`.

## 3. Biblioteca de layouts

Você **não** precisa aparecer o tempo todo. A câmera é um recurso entre vários.

| Código | Nome | Composição | Quando usar | Máx. contínuo |
|---|---|---|---|---|
| **L1** | Rosto cheio | Você em tela inteira, enquadramento médio | Assinatura, opinião, lição final | 12 s |
| **L2** | Meia página | Você em 50% (esquerda), visual em 50% (direita: imagem produzida, print, hyperframe) | Contexto, explicação de conceito | 20 s |
| **L3** | Hyperframe cheio | Só o hyperframe, sua voz por baixo | Números, perguntas, frases de impacto | 6 s |
| **L4** | Tela + PiP | Gravação de tela em 100%, você em círculo de 280 px no canto inferior direito | Builder, app rodando | 25 s |
| **L5** | Sobreposição | Você em L1 com hyperframe sobreposto (lower-third, callout, número lateral) | Dado rápido sem tirar você da tela | 10 s |
| **L6** | Timelapse do builder | Tela do Claude Code acelerada 4–16×, legenda do que está acontecendo | Construção | 15 s |
| **L7** | Zoom guiado | Screenshot/dashboard com zoom e pan até o detalhe que importa | Métricas, telas do app | 8 s por alvo |
| **L8** | Antes × Depois | Duas metades com rótulo ANTES / DEPOIS | Evidência de teste e resultado | 8 s |

### Regras de ritmo
- **Troca visual a cada 4–8 s** (troca de layout, zoom, entrada de hyperframe ou corte de ângulo). Varie o intervalo: trocas em intervalos irregulares prendem mais que um metrônomo.
- Nunca dois blocos seguidos no mesmo layout dominante.
- Proporção-alvo no vídeo inteiro: **você em tela (L1+L2+L5) ≤ 45%**, telas reais (L4+L6+L7+L8) ≥ 35%, hyperframes cheios (L3) ≈ 20%.
- Punch-in de 110% em L1 a cada frase de ênfase (substitui segunda câmera).

## 4. Elementos de retenção por posição

| Momento | Recurso | Mecanismo |
|---|---|---|
| 0:00 | Número final em tela antes de qualquer contexto | Recompensa mostrada antes do esforço |
| 0:20 | "No fim eu mostro o placar completo" | Loop aberto |
| ~1:30 | Primeira pergunta de insight em tela cheia | Quebra de padrão |
| A cada 60–90 s | Mini-revelação (um número, uma tela nova, um erro do agente) | Recompensa em intervalo variável |
| Meio do vídeo (~5:30) | "O que quase deu errado" (re-hook) | Quase-acerto: a tensão antes da solução |
| Antes do bloco 7 | Pausa de 1 s em preto + som de suspense curto | Antecipação do placar |
| Fim | Gancho do próximo setor ("semana que vem: [setor] — e esse número vai ser pior") | Reentrada |

Esses mecanismos estão aqui para **segurar a atenção de quem já quer aprender o assunto**, nunca para enganar: todo loop aberto é fechado no mesmo vídeo.

## 5. Capítulos do YouTube (descrição)

Sempre os mesmos nomes, para o público reconhecer o formato:

```
0:00 O resultado
0:20 A pergunta
0:35 O ofício: [função]
2:30 Raio-X do processo
4:00 Os agentes
5:45 Construção ao vivo
8:00 Teste e evidência
10:00 O placar (ROI)
11:30 A lição
```

## 6. End screen (últimos 20 s)
Fundo escuro com dois cards: **episódio do próximo setor** (esquerda) e **playlist "IA de Ofício"** (direita). Você em L2 apontando, fala fixa: "Esse aqui é o [setor]. Os números são piores."
