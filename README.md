# Implementação em Hardware de um Acelerador com Arranjo Sistólico para Multiplicação de Matrizes de Ordem N

**Autor:** Valmir Ferreira da Silva  
**Orientador:** Prof. Gutemberg Gonçalves dos Santos Júnior, D.Sc.  
**Avaliador:** Prof. Marcos Ricardo Alcantara Morais, D.Sc.  
**Instituição:** Universidade Federal de Campina Grande — UFCG | Engenharia Elétrica

![Logo UFCG](images/figures/ufcg.png)

---

## Contexto, Fundamentação e Objetivos

---

### Slide: Motivação

- Multiplicação de matrizes aparece em **visão computacional** e **aprendizado profundo**.
- Em CPUs, a implementação clássica cresce com custo cúbico e explora pouco paralelismo espacial.
- Em aplicações intensivas, o gargalo passa a ser simultaneamente de **desempenho** e **eficiência energética**.

| | |
|---|---|
| **Plataforma:** FPGA | Reconfiguração + paralelismo em hardware |
| **Estratégia:** Arranjo sistólico | Reuso local de dados e Paralelismo Temporal e Espacial |

---

### Slide: Por que acelerar em hardware?

**Limitações em software:**
- Execução sequencial do algoritmo;
- Maior pressão sobre memória e barramento;
- Crescimento rápido do tempo com o tamanho das matrizes.

**Oportunidade com FPGA:**
- Paralelismo espacial explícito;
- Fluxo de dados controlado em hardware;
- Boa relação entre desempenho e flexibilidade.

---

### Slide: Objetivo Geral

**Objetivo geral:**  
Projetar, implementar e validar um acelerador de multiplicação de matrizes baseado em *systolic array*, utilizando FPGA **Zynq UltraScale+ ZCU106**, para avaliar **desempenho**, **utilização de recursos**, **temporização** e **escalabilidade**.

- Arquitetura parametrizável N×N;
- Integração PS–PL com DMA;
- Ambiente de verificação RTL e testes HiL;
- Avaliação experimental para múltiplos tamanhos de arranjo.

---

### Slide: Multiplicação de Matrizes

$$C = A \times B, \qquad c_{ij} = \sum_{k=0}^{K-1} a_{ik} b_{kj}$$

> Cada elemento de C é obtido por uma sequência de produtos e acumulações entre uma linha de A e uma coluna de B.

- Para matrizes quadradas, o custo clássico cresce como O(N³).
- O padrão de cálculo é altamente regular e adequado a paralelismo espacial.

**Onde a oportunidade aparece?**
- Muitos produtos independentes;
- Reuso de operandos entre resultados vizinhos;
- Estrutura repetida para diferentes valores de N.

---

### Slide: Algoritmo clássico em software

![Algoritmo clássico de multiplicação.](images/figures/matrix_sw.png)

*Figura: Algoritmo clássico de multiplicação.*

- Três laços aninhados percorrem linhas, colunas e produtos parciais;
- O paralelismo precisa ser extraído por compilador, vetorização ou múltiplos núcleos;
- O acesso frequente à memória torna-se relevante para matrizes maiores.

> O algoritmo é simples de descrever, mas ineficiente para explorar **paralelismo maciço** de forma dedicada.

---

### Slide: Conceito de arquitetura sistólica

- Arranjos sistólicos são redes regulares de *Processing Elements* (PEs);
- Os dados avançam ritmicamente, sincronizados pelo clock;
- Cada PE executa uma parcela pequena da computação e repassa dados aos vizinhos.

> Reutilização de dados dentro da malha, com comunicação **local** em vez de acessos repetidos à memória externa.

![Fluxo bidimensional de operandos.](images/figures/dataflow_systolic.png)

*Figura: Fluxo bidimensional de operandos.*

---

### Slide: Fluxo de dados em um arranjo 3×3

![Encontro entre elementos de A e B nos PEs.](images/figures/dataflow_systolic.png)

*Figura: Encontro entre elementos de A e B nos PEs.*

- Elementos de A avançam horizontalmente;
- Elementos de B avançam verticalmente;
- Cada PE calcula e acumula um resultado parcial;

> O desempenho depende tanto da computação local quanto do **alinhamento temporal** com que os dados entram no array.

---

### Slide: Janela temporal — Ciclos 1 ao 3

| Ciclo 1 | Ciclo 2 | Ciclo 3 |
|:---:|:---:|:---:|
| ![Ciclo 1](images/figures/cycle1.png) | ![Ciclo 2](images/figures/cycle2.png) | ![Ciclo 3](images/figures/cycle3.png) |
| **Ciclo 1:** início do preenchimento | **Ciclo 2:** propagação dos primeiros operandos | **Ciclo 3:** mais PEs passam a operar simultaneamente |

---

### Slide: Janela temporal — Ciclos 4 ao 6

| Ciclo 4 | Ciclo 5 | Ciclo 6 |
|:---:|:---:|:---:|
| ![Ciclo 4](images/figures/cycle4.png) | ![Ciclo 5](images/figures/cycle5.png) | ![Ciclo 6](images/figures/cycle6.png) |
| **Ciclo 4** | **Ciclo 5** | **Ciclo 6** |

- A fase inicial é dominada pelo **enchimento do arranjo**.

---

### Slide: Janela temporal — Ciclos 7 ao 8

| Ciclo 7 | Ciclo 8 | Resultado |
|:---:|:---:|:---:|
| ![Ciclo 7](images/figures/cycle7.png) | ![Ciclo 8](images/figures/cycle8.png) | ![Resultado](images/figures/resultado.png) |
| **Ciclo 7** | **Ciclo 8** | **Resultado** |

---

## Arquitetura Proposta

---

### Slide: Plataforma Experimental

![Placa Zynq UltraScale+ ZCU106.](images/figures/zcu106.jpg)

*Figura: Placa Zynq UltraScale+ ZCU106.*

- **PS**: processador ARM Cortex-A53 para coordenação e comunicação.
- **PL**: implementação do acelerador sistólico e buffers internos.
- **Fluxo de teste**: PS envio via DMA, processamento no array e coleta de resultados.

> A plataforma permite estudar o sistema completo: **Algoritmo + Hardware + Comunicação**.

---

### Slide: Evolução do sistema ao longo do projeto

| Ver. | Plataforma | Comunicação | Gargalo dominante | Melhoria introduzida |
|:---:|:---:|:---:|---|---|
| 0 | ARTY | UART | baixa largura de banda e baixa escalabilidade | validação funcional inicial |
| 1 | ZYNQ | Ethernet + FIFO | pré-processamento das matrizes no host | migração para PS+PL |
| 2 | ZYNQ | Ethernet + FIFO | envio de dados já deslocados | deslocamento incorporado ao hardware |
| 3 | ZYNQ | DMA + AXI Stream | overhead de movimentação de dados | transferência por blocos e menor latência |

> O ganho de desempenho não veio apenas do arranjo sistólico; ele dependeu fortemente da **evolução da infraestrutura de comunicação**.

---

### Slide: Integração com o Zynq e DMA/AXI Stream

![Integração do acelerador ao subsistema PS–PL.](images/figures/zynq_dma.png)

*Figura: Integração do acelerador ao subsistema PS–PL.*

- O DMA transfere blocos de dados entre memória do sistema e a lógica programável.

---

### Slide: Integração com o Zynq e DMA/AXI Stream (Wrapper)

![Integração do acelerador ao subsistema PS–PL.](images/figures/systolic_wrapper.png)

*Figura: Integração do acelerador ao subsistema PS–PL.*

---

### Slide: Arquitetura Geral do Acelerador

![Diagrama em blocos da Arquitetura Proposta.](images/figures/system_overview.png)

*Figura: Diagrama em blocos da Arquitetura Proposta.*

- Interface de E/S, buffers, escalonador, arranjo sistólico e unidade de controle compõem o sistema completo.

---

### Slide: Parametrização do arranjo sistólico

**Parâmetros principais:**
- **SIZE**: dimensão do arranjo N×N;
- **WIDTH**: largura dos operandos de entrada;

**Objetivo:**  
A mesma arquitetura-base pode ser reusada para diferentes tamanhos de problema, permitindo estudar escalabilidade.

> **Consequência direta:** Aumentar N eleva o número de PEs para N², o que favorece paralelismo, mas também aumenta demanda por interconexão, recursos lógicos e margem temporal.

---

## Verificação e Análises Experimentais

---

### Slide: Estratégia de verificação funcional

- Testbenches em SystemVerilog aplicaram vetores de teste representativos;
- Foram usados valores aleatórios e padrões específicos para exercitar caminhos distintos;
- As saídas do hardware foram comparadas com uma implementação de referência em software.

**Resultado principal:**  
As simulações confirmaram correspondência funcional entre a arquitetura RTL e o modelo de referência para os casos avaliados.

| | |
|---|---|
| **Tamanhos simulados:** 2 a 128 | com 4 bits de entrada e 8 bits de saída |
| **Limite prático:** 256+ | tempo de simulação/síntese elevado |

---

### Slide: Latência por etapa e por versão

| Versão | Escrita A/B | Array | Saída |
|:---:|:---:|:---:|:---:|
| 1.0 | 2N(2N−1) | 3N | N² |
| 2.0 | 2N² | 3N | N² |
| 3.0 | 2N | 3N | N |

> A versão otimizada reduz drasticamente o peso da comunicação, que sai de termos quadráticos para um comportamento linear em N.

---

### Slide: Efeito da otimização arquitetural

**Latência Total:**
- versão 1.0: 5N² + N + 15;
- versão 2.0: 3N² + 3N + 15;
- versão 3.0: 6N + 15.

> Ao deslocar funções de preparação para o hardware e transmitir dados em blocos, o sistema deixa de ser dominado por movimentação quadrática e passa a se aproximar do comportamento do próprio arranjo sistólico.

---

### Slide: Análise de Temporização @333 MHz

![Slack de setup e hold em função de N.](images/figures/timing.png)

*Figura: Slack de setup e hold em função de N.*

- Até 16×16, o *setup slack* permanece positivo;
- O melhor valor aparece próximo de 8×8;
- Em 64×64, há violação de *setup* (−0,093 ns).

> Escalar o array aumenta o caminho crítico e dificulta o fechamento temporal.

---

### Slide: Throughput teórico do acelerador

![Throughput ideal em Mmatrizes/s.](images/figures/throughput_theory.png)

*Figura: Throughput ideal em Mmatrizes/s.*

- Mede a capacidade máxima do hardware sem penalidades de comunicação;
- Arranjos menores processam mais matrizes completas por segundo devido ao menor custo de preenchimento/escoamento.

---

### Slide: Throughput mensurado com DMA

![Throughput observado em kmatrizes/s.](images/figures/throughput_measured.png)

*Figura: Throughput observado em kmatrizes/s.*

- O valor medido é bem menor que o teórico;
- O custo de iniciar transações e mover dados passa a dominar o tempo total, sobretudo para matrizes pequenas.

---

### Slide: Utilização absoluta de recursos da FPGA

![LUTs, registradores e CLBs por configuração.](images/figures/util_abs.png)

*Figura: LUTs, registradores e CLBs por configuração.*

- O crescimento acompanha aproximadamente N²;
- Cada aumento de N replica mais PEs e amplia interconexões.

> **Exemplo extremo:** 64×64: cerca de 174 mil LUTs e 27,5 mil CLBs.

---

### Slide: Utilização percentual e limite da plataforma

![Ocupação percentual dos recursos do FPGA.](images/figures/util_pct.png)

*Figura: Ocupação percentual dos recursos do FPGA.*

- Até 32×32, a implementação ainda é confortável;
- Em 64×64, a ocupação chega a **76,1%** das LUTs e **96,1%** dos CLBs.

> A arquitetura escala, mas a plataforma escolhida impõe um teto físico claro.

---

### Slide: Potência consumida e decomposição interna

| | |
|:---:|:---:|
| ![Potência total, dinâmica e estática.](images/figures/power.png) | ![Decomposição da potência para 64×64.](images/figures/power_breakdown.png) |
| *Figura: Potência total, dinâmica e estática.* | *Figura: Decomposição da potência para 64×64.* |

- Para 64×64, a potência total chega a **3,991 W**, com dominância da parcela dinâmica.

---

## Comparação e Conclusão

---

### Slide: Referência em software no ARM Cortex-A53 @ 1.2 GHz

![Tempo da implementação em software.](images/figures/cpu_sw.png)

*Figura: Tempo da implementação em software.*

- O tempo cresce rapidamente com N;
- De 8,4 µs em 2×2 até 9314,3 µs em 32×32;
- O comportamento é coerente com custo cúbico do algoritmo clássico.

---

### Slide: Hardware medido vs. execução teórica do array

| | |
|:---:|:---:|
| ![Tempo medido do sistema PS+PL.](images/figures/dma_us.png) | ![Tempo medido vs. ideal do arranjo.](images/figures/hw_vs_theory.png) |
| *Figura: Tempo medido do sistema PS+PL.* | *Figura: Tempo medido vs. ideal do arranjo.* |

- O hardware permanece em faixa de dezenas de microssegundos, mas ainda acima do limite teórico devido ao custo de comunicação.

---

### Slide: Speedup do acelerador FPGA

![Ganho em relação à implementação em software.](images/figures/speedup.png)

*Figura: Ganho em relação à implementação em software.*

- 2×2: ganho ainda baixo (0,5×);
- 8×8: cerca de 4,2×;
- 16×16: cerca de 30,1×;
- 32×32: acima de 200×.

---

### Slide: Resumo de Resultados

| Arranjo | Setup | Potência total | Uso de LUTs | Observação |
|---|:---:|:---:|:---:|---|
| 2×2 | positivo | ~0,61 W | 0,1% | baixa carga computacional |
| 16×16 | positivo | ~1,08 W | 5,1% | bom equilíbrio |
| 32×32 | positivo | ~1,22 W | 19,1% | alto speedup |
| 64×64 | negativo | 3,99 W | 76,1% | limite da plataforma |

> A configuração 32×32 aparece como um ponto especialmente interessante por combinar forte aceleração com margem de implementação ainda viável.

---

### Slide: Limitações do Trabalho

**Limitações identificadas:**
- Uso predominante de lógica geral em vez de DSPs dedicados;
- Maior dificuldade de timing para arranjos grandes;
- Ausência de otimizações avançadas de memória, como *tiling*;
- Avaliação focada em métricas de implementação, não em aplicações completas de IA.

> As limitações não invalidam os resultados; elas indicam os próximos passos necessários para transformar a arquitetura em uma solução mais robusta e competitiva.

**Lição principal:** Não basta acelerar o núcleo — É preciso alimentar e escoar dados com eficiência.

---

### Slide: Conclusões do Trabalho

**Resultados Alcançados:**
- Arquitetura sistólica parametrizável implementada e validada;
- Uso de DMA com barramentos HPC na Zynq;
- Análise experimental de latência, timing, recursos e potência;
- Comprovação de ganhos expressivos para matrizes maiores.

| | |
|---|---|
| **Speedup máximo:** >200× | Para a configuração 32×32 medida |
| **Maior desafio:** Escalabilidade física | Timing, Recursos e Potência em 64×64 |

---

### Slide: Trabalhos Futuros

**Melhorias:**
- Solução mista LUTs e DSP;
- *Pipeline* a nível de Data Path;
- Hierarquia de memória com *buffering* e *tiling*;

**Direções:**
- Integração com processadores RISC-V;
- Avaliação com redes neurais e workloads reais;
- Múltiplos arranjos ou arranjos maiores.

---

# Obrigado!
