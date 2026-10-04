# GUIDE — EP01 · UTILITIES · ATENDENTE DE DISTRIBUIDORA

> **Exemplo de referência do formato.** Os números marcados `ILUSTRATIVO` existem só para mostrar como o roteiro soa; num episódio real eles vêm do seu `metricas.yaml`. As evidências estão como **alvos de pesquisa**: numa execução real o `/video-guide` preenche com links verificados.

## 1. Ficha
| Campo | Valor |
|---|---|
| Ângulo | Atendente de distribuidora gasta a maior parte da ligação de falta de energia consultando sistemas. Uma IA que conhece a rede, as ocorrências abertas e as regras de prazo resolve a ligação antes do atendente atender. |
| Público principal | Gestores de atendimento e operação de distribuidoras; diretoria de CX |
| Duração YT alvo | 12 min |
| Cor do setor | `--sector-utilities` (#FFB020) |
| Número herói | `11 min → 1,5 min` por atendimento (ILUSTRATIVO) |
| Próximo episódio | Seguros · analista de sinistro auto |

## 2. Evidências de audiência (alvos de pesquisa)
| # | Evidência a buscar | Fonte sugerida | O que prova | Onde entra |
|---|---|---|---|---|
| E1 | Volume de reclamações/ligações sobre interrupção de energia | Relatórios de ouvidoria da ANEEL; Consumidor.gov.br | Tamanho do problema | Cena 5 |
| E2 | Indicadores DEC/FEC e prazos regulatórios de atendimento | ANEEL (PRODIST, indicadores de continuidade) | Por que velocidade tem custo regulatório | Cena 8 |
| E3 | Vídeos outliers sobre "IA no call center" / "IA atendimento energia" | YouTube | Demanda pelo tema | Ficha / título |
| E4 | Autocomplete: "falta de energia como...", "ia para call center..." | YouTube + Google | Perguntas reais | Cena 4, R4 |
| E5 | Comentários de consumidores sobre espera na ligação em temporada de chuva | Reclame Aqui, X, comentários de notícias | A dor na voz do cliente | Cena 6 (`HF-EVIDENCE`) |
| E6 | Sazonalidade de buscas "falta de energia" | Google Trends | Picos em tempestades → pico de demanda no call center | Cena 7 |

## 3. Hooks de abertura
| Hook | Tipo | Texto falado | Texto na tela | Espec. | Tensão | Verdade | Natural | Total |
|---|---|---|---|---|---|---|---|---|
| **A** | H1 | "Onze minutos. É quanto dura uma ligação de 'acabou a luz'. Nove deles o atendente passa procurando informação." | **11 min** | 5 | 5 | 4* | 5 | **19** |
| B | H7 | "Você sabe quantas ligações de falta de energia já têm a resposta no sistema antes do cliente ligar? Quase todas." | **Quase todas.** | 4 | 5 | 3* | 4 | 16 |
| C | H5 | "Eu levei o atendimento de falta de energia de onze minutos para um e meio. Em nove dias de construção." | **11 → 1,5 min** | 5 | 4 | 4* | 4 | 17 |

\*depende dos números reais do piloto. **Escolhido para o YouTube**: A · B vai para o R2, C para o R1.

## 4. Títulos e thumbnails
**Títulos**
1. Construí a IA de um atendente de energia (e medi o ROI)
2. 11 minutos → 1,5: IA para distribuidora na prática
3. A IA que já sabe por que acabou a sua luz

**Thumbnails**
| Var. | Texto | Expressão | Objeto | Fundo |
|---|---|---|---|---|
| A | **11 → 1,5 MIN** | sobrancelha levantada, meio sorriso | headset | poste de energia à noite, desfocado, tom âmbar |
| B | **9 MIN PERDIDOS** | sério, olhando para o número | relógio | tela de sistema legado desfocada |
| C | **QUAL IA?** | dúvida, mão no queixo | crachá de atendente | fundo escuro liso, faixa âmbar |

## 5. Roteiro cena a cena

### BLOCO 0 — Cold open (0:00–0:20)

**CENA 1** · `L3 → L1` · ~9 s
> 🎙 Onze minutos.
> É quanto dura uma ligação de "acabou a luz" numa distribuidora.
> Nove deles o atendente passa procurando informação.

- **Visual**: `HF-NUM` "11 min" (rótulo: "por ligação de falta de energia") → corte para L1 em "nove deles", `HF-LOWER` "9 min em consulta a sistemas".
- **Entrega**: pausa de 1 s depois de "onze minutos". Sem sorriso.

**CENA 2** · `L4` · ~10 s
> 🎙 No fim desse vídeo a mesma ligação dura um minuto e meio.
> E eu vou mostrar cada passo de como chegamos lá.

- **Visual**: 2 s do app final rodando (`broll/app_fluxo-falta-energia.mp4`, trecho da resposta automática), PiP você.
- **Entrega**: "cada passo" com punch-in.

### BLOCO 1 — Assinatura (0:20–0:35)

**CENA 3** · `L1 → HF-SIGNATURE`
> 🎙 Toda empresa me faz a mesma pergunta: qual a melhor IA para colocar na mão do meu funcionário hoje?
> A minha resposta é sempre a mesma: a que já conhece o trabalho dele.
> Hoje o trabalho é de atendente, numa distribuidora de energia. E eu vou construir essa IA na sua frente.

- **Visual**: vinheta 3 s → pergunta em texto palavra por palavra → `HF-SIGNATURE` com crachá `UTILITIES · ATENDENTE · EP. 01`.

### BLOCO 2 — O ofício (0:35–2:30)

**CENA 4** · `HF-CHAPTER` + `L2`
> 🎙 Esse é o dia de um atendente de distribuidora em dia de chuva.
> Fila de espera cheia. Três sistemas abertos. E quase toda ligação é a mesma pergunta: quando a minha luz volta?

- **Visual**: `HF-CHAPTER` "1 · O OFÍCIO" · L2 com imagem conceitual (headset sobre mesa, chuva na janela — gerada, só ilustrativa) e 3 ícones entrando: `database` ×3 "GIS · OMS · CRM".

**CENA 5** · `L5`
> 🎙 Para responder, ele precisa achar o endereço do cliente, descobrir em qual circuito ele está, ver se já tem ocorrência aberta naquele trecho e se tem equipe a caminho.
> Isso são quatro consultas. Em sistemas que não conversam entre si.

- **Visual**: `HF-FLOW` pequeno sobreposto à direita, 4 caixas aparecendo a cada consulta citada.

**CENA 6** · `HF-EVIDENCE`
> 🎙 E do outro lado da linha, a pessoa está no escuro, literalmente, ouvindo música de espera.

- **Visual**: `HF-EVIDENCE` com print anonimizado de reclamação pública (E5).

**CENA 7** · `L2` + `HF-NUM`
> 🎙 Quando cai uma tempestade, o volume de ligações multiplica em horas. E o quadro de atendentes é o mesmo.

- **Visual**: gráfico de sazonalidade (E6) à direita; `HF-NUM` com o multiplicador [PREENCHER com fonte].

**CENA 8** · `HF-QUESTION`
> 🎙 Então eu te pergunto: quantas dessas ligações precisavam mesmo de uma pessoa?

- **Visual**: `HF-QUESTION`, 1 s de silêncio depois.

### BLOCO 3 — Raio-X do processo (2:30–4:00)

**CENA 9** · `HF-CHAPTER` + `L7`
> 🎙 Vamos abrir o processo. Esse é o caminho de uma ligação hoje.

- **Visual**: `HF-FLOW` as-is completo: URA → fila → atendente → GIS → OMS → CRM → resposta → registro. Gargalo (consultas) pulsando em `--before`.

**CENA 10** · `L7`
> 🎙 O tempo não está na conversa. Está aqui, nesse vai e volta entre sistemas.
> Nove dos onze minutos.

- **Visual**: zoom no trecho GIS→OMS→CRM; `HF-NUM` "9 de 11 min" (ILUSTRATIVO).

**CENA 11** · `HF-QUESTION`
> 🎙 E se o atendente já recebesse a ligação com a resposta pronta? Ou melhor: e se a maioria delas nem chegasse até ele?

### BLOCO 4 — Desenho dos agentes (4:00–5:45)

**CENA 12** · `HF-CHAPTER` + `L2`
> 🎙 Aqui entra a ideia da série. Uma IA genérica não sabe o que é um circuito, um religador ou um prazo da ANEEL.
> A IA que funciona aqui é a que conhece esse ofício. Então eu desenhei três agentes.

- **Visual**: `HF-AGENTS` com 3 cartões entrando.

**CENA 13** · `HF-AGENTS` (detalhe)
> 🎙 O primeiro é o Localizador: pega o endereço ou o número da instalação e descobre o circuito.
> O segundo é o Despachante: sabe ler as ocorrências abertas, o status da equipe e a previsão de religação.
> O terceiro é o Atendente: conversa com o cliente, no tom da empresa, e sabe a hora de passar para uma pessoa.

- **Visual**: cada cartão acende quando citado, com a linha "conhece:" — Localizador: "base de instalações, topologia da rede" · Despachante: "OMS, regras de prazo, histórico de religação" · Atendente: "roteiro de atendimento, limites, escalonamento".

**CENA 14** · `HF-FLOW` to-be
> 🎙 O fluxo novo fica assim. A ligação ou a mensagem chega, os três agentes trabalham em segundos, e o cliente recebe a previsão. Se for caso de risco, fio caído, equipamento de saúde em casa, vai direto para um humano.

- **Visual**: `HF-FLOW` to-be; ramo "risco → humano" em `--highlight` com ícone `shield-check`.

### BLOCO 5 — Construção (5:45–8:00)

**CENA 15** · `HF-CHAPTER` + `L4`
> 🎙 Agora a parte que quase deu errado.

- **Visual**: re-hook (H8). Tela do builder parada no erro.

**CENA 16** · `L4`
> 🎙 Na primeira versão, o Despachante dava previsão de religação para ocorrências que ainda nem tinham equipe designada. Ele chutava.
> O motivo: eu não tinha ensinado a regra do ofício. Sem equipe em campo, o status certo é "em análise".

- **Visual**: print do teste falhando; `HF-QUOTE` "Sem equipe em campo: em análise." com "em análise" marcado.

**CENA 17** · `L4`
> 🎙 A correção foi voltar uma etapa. Eu escrevi a especificação com as regras do setor antes de escrever qualquer código.

- **Visual**: a especificação aberta no Claude Code, zoom nas regras.

**CENA 18** · `L6` timelapse
> 🎙 Daqui pra frente foi construção. Os agentes, as integrações simuladas com os sistemas, os testes com ocorrências de exemplo.

- **Visual**: `broll/builder_01.mp4` 12×, contador "+X h de construção" [PREENCHER], música sobe.

**CENA 19** · `L2`
> 🎙 Nove dias, do zero ao piloto. [PREENCHER custo] em API.

- **Visual**: `HF-NUM` "9 dias" (ILUSTRATIVO).

### BLOCO 6 — Teste e evidência (8:00–10:00)

**CENA 20** · `HF-CHAPTER` + `L4`
> 🎙 Vamos testar com um caso real, com dados anonimizados.
> Cliente liga, informa o endereço.

- **Visual**: `broll/app_fluxo-falta-energia.mp4` completo, PiP você; `HF-AGENTS` em overlay pequeno mostrando os três carregando.

**CENA 21** · `L4`
> 🎙 Em quatro segundos: circuito identificado, ocorrência aberta há quarenta minutos, equipe a caminho, previsão das dezoito e trinta.

- **Visual**: zoom em cada campo da tela conforme fala.

**CENA 22** · `L4`
> 🎙 Agora um caso de risco. O cliente diz que tem um fio no chão.
> O agente para, avisa para manter distância e transfere na hora para um atendente com prioridade.

- **Visual**: fluxo de escalonamento rodando; ícone `shield-check`.

**CENA 23** · `L8`
> 🎙 Lado a lado: a mesma ligação, antes e depois.

- **Visual**: `HF-COMPARE` ANTES (11 min, 4 sistemas) × DEPOIS (1,5 min, 0 consultas manuais). ILUSTRATIVO.

### BLOCO 7 — O placar (10:00–11:30)

**CENA 24** · preto 1 s → `HF-ROI`
> 🎙 Agora o número que importa.

**CENA 25** · `HF-ROI`
> 🎙 Velocidade: de onze minutos para um e meio por atendimento.
> ROI: [PREENCHER] por mês, com payback em [PREENCHER] semanas.
> Qualidade: [PREENCHER] por cento de acerto na previsão, auditado em [N] casos.
> Construção: nove dias.

- **Visual**: 4 cartões acendendo um por um com tick.

**CENA 26** · `L7`
> 🎙 E esse é o painel que a operação acompanha.

- **Visual**: `screens/dashboard-final.png` com zoom em ligações resolvidas sem atendente.

### BLOCO 8 — Lição + próximo (11:30–12:30)

**CENA 27** · `L1`
> 🎙 A lição que eu levo para qualquer setor: o erro da primeira versão estava no ofício. Faltava uma regra que todo atendente veterano sabe.
> Quando eu coloquei essa regra, o agente parou de chutar.

- **Visual**: `HF-QUOTE` "Faltava uma regra que todo veterano sabe." (destaque: "todo veterano sabe")

**CENA 28** · `L2` → end screen
> 🎙 Semana que vem: seguros. O analista de sinistro. E esse número vai ser pior.

## 6. Cortes de Instagram
| Reel | Tipo | Hook (frame 1) | Cenas | Hyperframes | Duração |
|---|---|---|---|---|---|
| R1 | Caso em 60 s | "11 → 1,5 min" (hook C) | 4, 5, 13, 18, 21, 25 | HF-NUM, HF-AGENTS, HF-KPI | 60 s |
| R2 | Um número | "Quase todas." (hook B) | 9, 10, 11 | HF-NUM, HF-FLOW, HF-QUESTION | 35 s |
| R3 | Bastidor do builder | "Meu agente chutava a hora que a luz voltava." | 15, 16, 17, 18 | HF-QUOTE, HF-AGENTS | 50 s |

Legenda do post R1:
> Onze minutos por ligação de falta de energia. Nove deles procurando informação em sistemas.
> Construí três agentes que conhecem a rede, as ocorrências e as regras de prazo. A ligação caiu para um minuto e meio.
> O episódio completo, com o erro que quase derrubou o projeto, está no YouTube. Link na bio.

## 7. Lista de gravação
**A-roll**
- [ ] Hooks A, B, C · Assinatura × 2 · Cenas 1–28 · hook do R3
- [ ] Frames "thumb": sobrancelha levantada (A), sério (B), dúvida (C)

**B-roll de builder**
- [ ] `broll/builder_01.mp4` — especificação com regras do setor, criação dos 3 agentes, teste falhando (previsão sem equipe), correção, testes passando

**B-roll do app**
- [ ] `broll/app_fluxo-falta-energia.mp4` — cliente informa endereço → previsão
- [ ] `broll/app_fluxo-risco.mp4` — fio no chão → transferência prioritária

**Screenshots**
- [ ] `screens/sistema-atual.png` (mock dos 3 sistemas, sem dados reais)
- [ ] `screens/dashboard-final.png`

**Métricas** — `metricas/metricas.yaml` com velocidade, roi, qualidade, construção

## 8. Autoavaliação
| Critério | Status |
|---|---|
| ≥ 5 evidências de ≥ 3 fontes | 6 alvos de 5 fontes (verificar) |
| Hook com número/função concreta | ✅ |
| Assinatura idêntica | ✅ |
| Você em tela ≤ 45% | ✅ ~35% (L1/L2/L5 em 11 de 28 cenas, curtas) |
| ≥ 1 hyperframe por 60 s | ✅ |
| ≥ 2 perguntas de insight | ✅ (cenas 8, 11) |
| Placar com 4 cartões | ✅ |
| 0 números inventados | ⚠️ números ILUSTRATIVOS a substituir |
| 0 "não é X, é Y" | ✅ |
