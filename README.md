# ProntoDrive DETRAN

Simulador interativo de checklist da etapa inicial da prova pratica do DETRAN, com foco total nos procedimentos antes de iniciar a conducao.

O projeto foi desenvolvido em `Python` com `pygame` e apresenta uma cabine de carro em perspectiva interna, com interacao `point and click`, modos de dificuldade, cronometro, feedback do examinador e efeitos sonoros.

## Visao Geral

`ProntoDrive DETRAN` nao simula a direcao do veiculo. O foco do jogo e treinar a memorizacao e a ordem logica dos procedimentos iniciais da prova pratica:

- fechar a porta
- ajustar banco
- ajustar retrovisores
- colocar o cinto
- verificar o freio de mao
- pisar na embreagem
- ligar o motor
- engatar a primeira marcha

O jogador interage clicando diretamente nos elementos do interior do carro.

## Funcionalidades

- Interface `point and click` baseada em uma cabine de carro
- Tres modos de jogo:
  - `Com ajuda`
  - `Sem ajuda`
  - `Sem ajuda + tempo`
- Checklist com progresso visual
- Feedback textual do examinador
- Sistema de vitoria e derrota
- Cronometro real no modo com tempo
- Efeitos sonoros por acao
- Ambiencia sonora de menu e interior do carro
- Executavel `.exe` gerado para Windows

## Tecnologias

- `Python 3.13`
- `pygame`
- `PyInstaller`

## Estrutura do Projeto

```text
simulador_detran/
  assets/
    sounds/
      actions/
      ambience/
      ui/
  dados/
    acoes.json
    erros.json
    sequencia.json
  core.py
  pygame_ui.py

tools/
  generate_sounds.py
  fetch_real_sounds.py

simulador_gui.py
build_exe.bat
```

## Como Executar

### Rodar pelo Python

```bash
D:\python\python.exe simulador_gui.py
```

### Gerar o executavel

```bash
build_exe.bat
```

Executavel final:

- `dist/SimuladorDetranChecklist.exe`

## Como Jogar

1. Escolha a dificuldade.
2. Inicie a simulacao.
3. Clique nos elementos do carro para executar as acoes.
4. Complete toda a preparacao antes do tempo acabar, se estiver no modo cronometrado.

## Diferenciais do Projeto

- Foco em uma etapa real da prova pratica
- Abordagem educativa com cara de jogo
- Interface visual propria, desenhada no `pygame`
- Estrutura pronta para evoluir com novos efeitos, telas e refinamentos

## Proximos Passos Possiveis

- adicionar capturas de tela no README
- criar icone personalizado do executavel
- refinar mixagem dos efeitos sonoros
- adicionar tela de instrucoes detalhada

## Licencas e Creditos

Efeitos sonoros reais utilizados em parte do projeto:

- [BigSoundBank - Car door opening and closing](https://bigsoundbank.com/car-1-door-opening-and-closing-s0971.html)
- [BigSoundBank - Seat belt](https://bigsoundbank.com/seat-belt-in-s1506.html)
- [BigSoundBank - Handbrake released](https://bigsoundbank.com/handbrake-released-s3104.html)

Os demais sons foram gerados localmente para uso no projeto.

## Autor

Projeto desenvolvido como simulador educacional de portfolio para treino da preparacao inicial da prova pratica do DETRAN.
