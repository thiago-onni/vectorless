# 03 — Método de Roteiro

O roteiro é construído em 6 passos, sempre na mesma ordem. O agente `/video-guide` executa os passos 1–5 e entrega o passo 6 (o GUIDE).

```
1. Evidência de audiência  →  2. Ângulo  →  3. Hooks  →  4. Arco do caso  →  5. Título + thumbnail  →  6. GUIDE
```

---

## Passo 1 — Evidência de audiência (o tema importa para quem?)

Antes de escrever uma linha, o agente coleta evidências de que o tema tem demanda. Mínimo de **5 evidências, de pelo menos 3 fontes diferentes**, cada uma com link.

| Fonte | O que extrair | Como |
|---|---|---|
| **YouTube** | Vídeos sobre "IA + [setor]/[função]" com views muito acima da média do canal (outliers ≥ 3×) | Busca + comparação views/inscritos |
| **Autocomplete** (YouTube e Google) | Perguntas reais: "ia para atendimento de [setor]", "como usar ia em [função]" | Digitar o início da frase e coletar as sugestões |
| **Comentários** | Dores e objeções em palavras do público | Ler os 50 primeiros comentários dos outliers |
| **LinkedIn / Reddit / fóruns do setor** | Discussões de quem faz o trabalho | Busca por função + "IA" |
| **Relatórios do setor** | Números de custo, volume, tempo, regulação (ANS, ANATEL, ANEEL, SUSEP, BACEN, etc.) | Sempre com fonte e ano |
| **Google Trends** | Interesse crescente ou sazonal (ex.: sinistros em época de chuva) | Comparar termos em 12 meses |

**Saída do passo 1** — tabela no GUIDE:

| # | Evidência | Fonte (link) | O que prova | Onde entra no roteiro |
|---|---|---|---|---|

Regra: **número sem fonte não entra no vídeo**. Se a fonte não for encontrada, o número vira pergunta ("quanto você acha que custa...?") ou sai.

---

## Passo 2 — Ângulo (a frase que o vídeo prova)

Escolha um ângulo com base nas evidências. Formato:

> **"[Função] em [setor] perde [recurso] com [tarefa]. Uma IA que conhece [conhecimento específico do ofício] resolve em [tempo/custo]."**

Teste do ângulo (todos precisam ser "sim"):
- [ ] Alguém do setor reconheceria o problema na primeira frase?
- [ ] Existe um número de antes **e** um de depois?
- [ ] O conhecimento do ofício é o motivo da IA funcionar (e não um chatbot genérico)?
- [ ] Dá para mostrar na tela (builder, app, dashboard)?

---

## Passo 3 — Hooks: o banco e onde cada um entra

### 3.1 Banco de hooks (8 tipos)

| Tipo | Estrutura | Exemplo |
|---|---|---|
| **H1 Número antes do contexto** | "[número]. É isso que [função] [perde/faz] por [período]." | "47 minutos. É o tempo que um analista de sinistro gasta pra ler um laudo." |
| **H2 Pergunta-assinatura** | "Qual a melhor IA para colocar na mão de um [função]?" | (fixo da série) |
| **H3 Custo escondido** | "Toda [operação] tem um custo que não aparece no relatório: [X]." | "Toda distribuidora de energia paga por uma ligação que não precisava existir." |
| **H4 Quebra de crença** | "Todo mundo acha que [crença]. Os números dizem [fato]." | "Todo mundo acha que o gargalo do call center é gente. Os números dizem que é consulta a sistema." |
| **H5 Resultado primeiro** | "Eu reduzi [KPI] de [A] para [B] em [tempo]. Vou mostrar como." | "Tempo de triagem de 6 horas para 4 minutos. Em 9 dias de construção." |
| **H6 O funcionário** | "Esse é o dia do [função]: [3 tarefas concretas]." | "Esse é o dia de uma enfermeira de regulação: 3 sistemas, 2 planilhas, 1 telefone." |
| **H7 Desafio ao espectador** | "Você consegue dizer [algo difícil]? Seu time também não." | "Você sabe quantas ligações da sua operação são a mesma pergunta? Eu sei: 38%." |
| **H8 Bastidor** | "Esse agente errou [X] na primeira versão. O motivo é [Y]." | (para R3 e para o re-hook do meio) |

> **Proibido**: estrutura "não é X, é Y" / "mais do que X, é Y" (ver [06-regras-anti-slop](06-regras-anti-slop.md)). Ela soa a texto gerado por IA, justo o que a série combate.

### 3.2 Mapa de hooks: onde cada um entra

| Posição | YouTube | Instagram |
|---|---|---|
| Primeiro segundo | **H1 ou H5** (cold open) | **H1, H5 ou H7** em texto na tela |
| Abertura fixa | **H2** (assinatura) | H2 só no reel R4 |
| Entrada do bloco 2 | **H6** (o dia do funcionário) | — |
| Fim do bloco 3 | **H4 ou H7** como pergunta de insight | — |
| Meio (re-hook ~5:30) | **H8** (o que quase deu errado) | H8 no R3 |
| Antes do placar | "Agora o número que importa." | — |
| Fim | Gancho do próximo setor (H3 do próximo episódio) | Volta à pergunta do frame 1 (loop) |

### 3.3 Como o agente escolhe o hook
Escreve **3 versões** do hook de abertura (tipos diferentes), dá nota de 1 a 5 em:
- **Especificidade** (número/função/setor concretos)
- **Tensão** (cria uma pergunta na cabeça de quem assiste)
- **Verdade** (é sustentado por evidência do passo 1 ou pelos números do caso)
- **Fala natural** (dá pra dizer em voz alta sem parecer anúncio)

Você grava as 3; a edição usa a de maior nota e as outras viram hooks dos reels.

---

## Passo 4 — Arco do caso (o roteiro em si)

Cada bloco do [formato YouTube](01-formato-youtube.md) responde a uma pergunta. O roteiro é escrito **como você fala**, em frases curtas, para teleprompter.

| Bloco | Pergunta que responde | Conteúdo obrigatório |
|---|---|---|
| 0 Cold open | "Por que eu deveria assistir?" | O número final + a pergunta que ele cria |
| 1 Assinatura | "Que série é essa?" | Texto fixo |
| 2 O ofício | "Quem sofre e quanto custa?" | Nome da função, 3 tarefas reais do dia, 1 número de custo com fonte, 1 pergunta ao espectador |
| 3 Raio-X | "Onde exatamente trava?" | Fluxo atual em passos, o passo-gargalo, tempo/custo do gargalo, pergunta de insight |
| 4 Agentes | "O que a IA precisa saber?" | Lista de agentes, o conhecimento de ofício de cada um (regras, normas, sistemas, vocabulário), dados de entrada |
| 5 Construção | "Como foi feito?" | A especificação, 1 decisão técnica explicada, timelapse, quanto tempo levou |
| 6 Teste | "Funciona de verdade?" | Caso real rodando, 1 erro encontrado + correção, comparação antes × depois |
| 7 Placar | "Valeu a pena?" | Tempo, custo, qualidade, payback — sempre ANTES → DEPOIS |
| 8 Lição | "O que eu levo daqui?" | 1 lição aplicável a qualquer setor + gancho do próximo |

### Regras de escrita
- **Uma ideia por frase.** Frase com mais de 20 palavras é dividida.
- Números falados do jeito que se fala: "quase meio milhão", e em tela o exato: "487.320".
- Todo número tem **comparação** (antes/depois, por funcionário, por mês, por R$).
- Termos do setor são usados e explicados uma vez ("TMA, o tempo médio de atendimento").
- A cada bloco, pelo menos **uma marcação de visual** que não seja você.
- Pergunta de insight = pergunta que o espectador quer responder sobre a própria empresa.

### Métricas: o "placar padrão" da série
Todo episódio mostra no bloco 7 **4 cartões**, sempre na mesma ordem e com os mesmos ícones:

| Cartão | Ícone | Métrica | Exemplo de formato |
|---|---|---|---|
| ⏱ VELOCIDADE | cronômetro | Tempo por tarefa antes → depois | 47 min → 3 min |
| 💰 ROI | moeda | Economia/mês e payback | R$ 180 mil/mês · payback 5 semanas |
| ✅ QUALIDADE | check | Taxa de acerto / retrabalho / conformidade | 96% de acerto vs. 88% manual |
| 🛠 CONSTRUÇÃO | ferramenta | Tempo e custo para construir com IA | 9 dias · R$ 1.400 em API |

Métrica sem dado real fica com `[PREENCHER]` no GUIDE, nunca inventada.

---

## Passo 5 — Título e thumbnail

### Título (3 opções, ≤ 60 caracteres)
Fórmulas:
- `[Número de resultado] com uma IA que entende [ofício]`
- `Construí a IA de um(a) [função] de [setor] (e medi o ROI)`
- `[Tarefa] em [tempo]: IA para [setor] na prática`
- `A melhor IA para [função] não é a que você está pensando` ← permitido em título só se o vídeo responder qual é

### Thumbnail (3 variações para teste A/B)
Regras fixas da série:
1. **Máximo 3 elementos**: seu rosto (expressão), um número gigante, um objeto/ícone do setor.
2. **Texto ≤ 4 palavras**, e diferente do título (completa, não repete).
3. Layout fixo: rosto à direita (⅓), número à esquerda, faixa da cor do setor no rodapé com `[SETOR]`.
4. Fundo escuro do design system, contraste alto; legível em 160×90 px.
5. Variações: (A) número de resultado, (B) número de problema, (C) pergunta curta.

O agente entrega o **prompt de imagem** e o **layout em texto** de cada variação; a foto do rosto vem da gravação (frame com expressão marcada no GUIDE).

---

## Passo 6 — O GUIDE

Formato em [`templates/guide-roteiro.md`](templates/guide-roteiro.md). Contém:
1. Ficha do episódio (ângulo, públicos, duração)
2. Tabela de evidências
3. Hooks (3 versões com nota)
4. Títulos e thumbnails
5. **Roteiro cena a cena** — fala (teleprompter) | layout | hyperframe | B-roll | nota de entrega
6. Cortes de Instagram (R1, R2, R3) com marcação de quais cenas reaproveitar
7. **Lista de gravação**: A-roll, B-roll de builder, B-roll do app, screenshots, métricas, frame de thumbnail
8. Checklist de aprovação humana

## Rubrica de qualidade (o agente se autoavalia antes de entregar)

| Critério | Mínimo |
|---|---|
| Evidências com link | ≥ 5, de ≥ 3 fontes |
| Hook de abertura com número ou função concreta | sim |
| Fala da assinatura idêntica ao padrão | sim |
| Proporção de cenas com você em tela | ≤ 45% |
| Marcações de hyperframe | ≥ 1 a cada 60 s |
| Perguntas de insight | ≥ 2 |
| Placar com os 4 cartões | sim |
| Números inventados | 0 |
| Frases "não é X, é Y" | 0 |
