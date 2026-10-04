# 05 — Pipeline de Edição

## 1. Como gravar (para o agente conseguir editar sozinho)

### A-roll (você falando o roteiro)
- Um arquivo por sessão; pode ser um vídeo bruto único com o roteiro inteiro.
- **Antes de cada cena, diga o número dela**: "cena sete". O agente usa isso para alinhar a fala ao GUIDE.
- Errou? Diga **"de novo"** e repita a frase ou a cena inteira. O agente fica com a **última tomada completa**.
- Grave os 3 hooks de abertura em sequência ("hook A", "hook B", "hook C").
- Grave a assinatura (bloco 1) 2 vezes.
- 4K ou 1080p, 30 fps, câmera na altura dos olhos, enquadramento com ar acima da cabeça (o agente recorta para 9:16 e para punch-in).
- Áudio: microfone de lapela ou dinâmico, ambiente seco. 10 s de silêncio da sala no início (para redução de ruído).
- Olhe para a câmera; marque com "**thumb**" + 2 s de expressão parada nos momentos que o GUIDE indicar (frame da thumbnail).

### B-roll de builder
- Gravação de tela do Claude Code (ou outro builder) em 1920×1080, fonte do terminal ≥ 16 px, tema escuro.
- Grave a sessão inteira; o agente acelera. Marque momentos importantes falando ou anotando o horário em `broll/marcacoes.md`.
- Esconda chaves de API, tokens, dados pessoais e nomes de cliente antes de gravar (ou anote os trechos para blur).

### B-roll do app rodando
- Cada fluxo do GUIDE em um arquivo, 1920×1080, cursor visível, sem notificações.
- Dados **fictícios ou anonimizados**. Nada de dado real de paciente, cliente ou segurado.

### Screenshots e métricas
- Screenshots em PNG, tamanho original.
- Métricas finais em `metricas/metricas.yaml` (formato abaixo). **É daqui que saem todos os números do placar.**

## 2. Estrutura de pastas do projeto

```
projetos/<AAAA-MM-DD>-<setor>-<slug>/
├── 00_briefing.md
├── 01_guide.md                ← gerado por /video-guide
├── raw/
│   ├── aroll_01.mp4           ← você falando (1 ou mais arquivos)
│   └── aroll_02.mp4
├── broll/
│   ├── builder_01.mp4         ← tela do Claude Code
│   ├── app_fluxo-triagem.mp4  ← app rodando (nome = fluxo do GUIDE)
│   └── marcacoes.md           ← opcional: "builder_01 00:42:10 agente de normas passou nos testes"
├── screens/
│   ├── dashboard-final.png
│   └── tela-triagem.png
├── metricas/
│   └── metricas.yaml
├── brand/                      ← opcional: logo, fonte, música aprovada
└── out/                        ← gerado por /video-edit
    ├── youtube_16x9.mp4
    ├── youtube.srt
    ├── youtube_capitulos.txt
    ├── ig_R1_caso.mp4
    ├── ig_R2_numero.mp4
    ├── ig_R3_bastidor.mp4
    ├── thumbs/thumb_A.png, thumb_B.png, thumb_C.png
    ├── edl.yaml
    └── qa_report.md
```

### `metricas.yaml`
```yaml
episodio: EP03
setor: utilities
funcao: atendente de call center de distribuidora
placar:
  velocidade: { antes: "11 min", depois: "1,5 min", unidade: "por atendimento", fonte: "log do piloto, 2.140 atendimentos" }
  roi:        { economia_mes: "R$ 0", payback: "0 semanas", premissas: "custo/min de atendimento R$ X" }
  qualidade:  { antes: "0%", depois: "0%", metrica: "acerto na classificação", fonte: "amostra auditada de N casos" }
  construcao: { tempo: "0 dias", custo: "R$ 0", ferramentas: ["Claude Code", "..."] }
extras:
  - { rotulo: "ligações evitadas/mês", valor: "0", fonte: "..." }
```

## 3. O que o agente `/video-edit` faz

| Etapa | Ação | Ferramenta |
|---|---|---|
| 1. Inventário | Lista todo o material, duração, resolução; confere contra a lista de gravação do GUIDE; reporta o que falta | ffprobe |
| 2. Transcrição | Transcreve A-roll com timestamps por palavra | Whisper (faster-whisper / whisper.cpp) ou API |
| 3. Alinhamento | Encontra "cena N", casa cada trecho com a fala do GUIDE, descarta tomadas anteriores a "de novo" | script + similaridade de texto |
| 4. Limpeza | Remove silêncios > 400 ms, hesitações, palavras repetidas; mantém respiro de 150 ms | cortes na EDL |
| 5. EDL | Monta `edl.yaml`: cada trecho com layout, hyperframe, B-roll, zoom, SFX | [`templates/edl.yaml`](templates/edl.yaml) |
| 6. Hyperframes | Gera as composições HTML a partir dos templates de [`hyperframes/`](hyperframes/) com os números do `metricas.yaml` | HyperFrames |
| 7. Composição | Monta timeline YouTube (16:9) e reels (9:16 split) | HyperFrames (rota `talking-head-recut`/`general-video`) ou ffmpeg |
| 8. Áudio | Redução de ruído, normalização, música com ducking, SFX | ffmpeg (`afftdn`, `loudnorm`, `sidechaincompress`) |
| 9. Legendas | SRT do YouTube + legendas queimadas no IG | transcrição alinhada |
| 10. Thumbnails | 3 variações a partir dos frames marcados com "thumb" | HyperFrames (frame único) ou HTML → PNG |
| 11. QA | Checklist abaixo → `qa_report.md` | — |

O agente **não publica nada**. Entrega os arquivos em `out/` para sua revisão.

## 4. Checklist de QA (o agente preenche, você aprova)

**Conteúdo**
- [ ] Todo número na tela bate com `metricas.yaml` ou com uma fonte da tabela de evidências
- [ ] Nenhum dado pessoal, chave de API ou nome de cliente visível (verificar frames do builder e do app)
- [ ] Assinatura com o texto exato
- [ ] Todos os loops abertos são fechados

**Ritmo**
- [ ] Nenhum layout L1 > 12 s; nenhum trecho sem troca visual > 8 s (YouTube) / 3 s (IG)
- [ ] Você em tela ≤ 45% do tempo (YouTube)
- [ ] Hook entre 0 e 1,5 s nos reels

**Técnico**
- [ ] Voz −14 LUFS (YT) / −13 (IG), pico ≤ −1 dBTP, música sem brigar com a voz
- [ ] Texto fora das safe zones do IG (0–220 px e 1500–1920 px)
- [ ] Legendas sem erro em termos do setor (siglas conferidas)
- [ ] Export: H.264 High, 1080p, 30 fps, AAC 320 kbps

**Revisão humana obrigatória** — você assiste ao vídeo inteiro antes de publicar. Nenhuma peça sai sem esse passo (ver [06](06-regras-anti-slop.md)).
