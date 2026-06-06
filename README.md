---
title: "Implementação em Hardware de um Acelerador com Arranjo Sistólico para Multiplicação de Matrizes de Ordem N"
author: "Valmir Ferreira da Silva"
orientador: "Prof. Gutemberg Gonçalves dos Santos Júnior, D.Sc."
avaliador: "Prof. Marcos Ricardo Alcantara Morais, D.Sc."
instituição: "Universidade Federal de Campina Grande — UFCG · Engenharia Elétrica"
---

# Implementação em Hardware de um Acelerador com Arranjo Sistólico para Multiplicação de Matrizes de Ordem N

**Autor:** Valmir Ferreira da Silva  
**Orientador:** Prof. Gutemberg Gonçalves dos Santos Júnior, D.Sc.  
**Avaliador:** Prof. Marcos Ricardo Alcantara Morais, D.Sc.  
**Instituição:** Universidade Federal de Campina Grande — UFCG · Engenharia Elétrica

<div align="center">
<img src="images/figures/ufcg.png" width="100" height="100" />
</div>
---

## 1. Contexto, Fundamentação e Objetivos

### Motivação

- Multiplicação de matrizes aparece em **visão computacional** e **aprendizado profundo**.
- Em CPUs, a implementação clássica cresce com custo cúbico e explora pouco paralelismo espacial.
- Em aplicações intensivas, o gargalo passa a ser simultaneamente de **desempenho** e **eficiência energética**.

| Dimensão | Escolha | Justificativa |
|---|---|---|
| **Plataforma** | FPGA | Reconfiguração + paralelismo em hardware |
| **Estratégia** | Arranjo sistólico | Reuso local de dados e paralelismo temporal e espacial |

---

### Por que acelerar em hardware?

**Limitações em software:**

- Execução sequencial do algoritmo;
- Maior pressão sobre memória e barramento;
- Crescimento rápido do tempo com o tamanho das matrizes.

**Oportunidade com FPGA:**

- Paralelismo espacial explícito;
- Fluxo de dados controlado em hardware;
- Boa relação entre desempenho e flexibilidade.

---

### Objetivo Geral

> Projetar, implementar e validar um acelerador de multiplicação de matrizes baseado em *systolic array*, utilizando FPGA **Zynq UltraScale+ ZCU106**, para avaliar **desempenho**, **utilização de recursos**, **temporização** e **escalabilidade**.

**Objetivos específicos:**

- Arquitetura parametrizável N×N;
- Integração PS–PL com DMA;
- Ambiente de verificação RTL e testes HiL;
- Avaliação experimental para múltiplos tamanhos de arranjo.

---

### Multiplicação de Matrizes

$$C = A \times B \qquad \Longrightarrow \qquad c_{ij} = \sum_{k=0}^{K-1} a_{ik}\, b_{kj}$$

Cada elemento de $C$ é obtido por uma sequência de produtos e acumulações entre uma linha de $A$ e uma coluna de $B$.

- Para matrizes quadradas, o custo clássico cresce como $O(N^3)$.
- O padrão de cálculo é altamente regular e adequado a paralelismo espacial.

**Onde a oportunidade aparece?**

- Muitos produtos independentes;
- Reuso de operandos entre resultados vizinhos;
- Estrutura repetida para diferentes valores de $N$.

---

### Algoritmo clássico em software

![Algoritmo clássico de multiplicação de matrizes](images/figures/matrix_sw.png)

*Figura 1 — Algoritmo clássico de multiplicação.*

- Três laços aninhados percorrem linhas, colunas e produtos parciais;
- O paralelismo precisa ser extraído por compilador, vetorização ou múltiplos núcleos;
- O acesso frequente à memória torna-se relevante para matrizes maiores.

> O algoritmo é simples de descrever, mas ineficiente para explorar **paralelismo maciço** de forma dedicada.

---

### Conceito de arquitetura sistólica

- Arranjos sistólicos são redes regulares de *Processing Elements* (PEs);
- Os dados avançam ritmicamente, sincronizados pelo clock;
- Cada PE executa uma parcela pequena da computação e repassa dados aos vizinhos.

> Reutilização de dados dentro da malha, com comunicação **local** em vez de acessos repetidos à memória externa.

![Fluxo bidimensional de operandos no arranjo sistólico](images/figures/dataflow_systolic.png)

*Figura 2 — Fluxo bidimensional de operandos.*

---

### Fluxo de dados em um arranjo 3×3

![Encontro entre elementos de A e B nos PEs](images/figures/dataflow_systolic.png)

*Figura 3 — Encontro entre elementos de A e B nos PEs.*

- Elementos de $A$ avançam **horizontalmente**;
- Elementos de $B$ avançam **verticalmente**;
- Cada PE calcula e acumula um resultado parcial.

> O desempenho depende tanto da computação local quanto do **alinhamento temporal** com que os dados entram no array.

---

### Janela temporal — Ciclos 1 ao 3

| Ciclo 1 | Ciclo 2 | Ciclo 3 |
|:---:|:---:|:---:|
| ![Ciclo 1](images/figures/cycle1.png) | ![Ciclo 2](images/figures/cycle2.png) | ![Ciclo 3](images/figures/cycle3.png) |
| Início do preenchimento | Propagação dos primeiros operandos | Mais PEs passam a operar simultaneamente |

---

### Janela temporal — Ciclos 4 ao 6

| Ciclo 4 | Ciclo 5 | Ciclo 6 |
|:---:|:---:|:---:|
| ![Ciclo 4](images/figures/cycle4.png) | ![Ciclo 5](images/figures/cycle5.png) | ![Ciclo 6](images/figures/cycle6.png) |

> A fase inicial é dominada pelo **enchimento do arranjo**.

---

### Janela temporal — Ciclos 7 e 8 · Resultado

| Ciclo 7 | Ciclo 8 | Resultado final |
|:---:|:---:|:---:|
| ![Ciclo 7](images/figures/cycle7.png) | ![Ciclo 8](images/figures/cycle8.png) | ![Resultado](images/figures/resultado.png) |

---

## 2. Arquitetura Proposta

### Plataforma Experimental

![Placa Zynq UltraScale+ ZCU106](images/figures/zcu106.jpg)

*Figura 4 — Placa Zynq UltraScale+ ZCU106.*

| Componente | Função |
|---|---|
| **PS** — ARM Cortex-A53 | Coordenação e comunicação |
| **PL** — Lógica programável | Acelerador sistólico e buffers internos |
| **Fluxo de teste** | PS envia via DMA → processamento no array → coleta de resultados |

> A plataforma permite estudar o sistema completo: **Algoritmo + Hardware + Comunicação**.

---

### Evolução do sistema ao longo do projeto

| Ver. | Plataforma | Comunicação | Gargalo dominante | Melhoria introduzida |
|:---:|:---:|:---:|---|---|
| 0 | ARTY | UART | Baixa largura de banda e escalabilidade | Validação funcional inicial |
| 1 | ZYNQ | Ethernet + FIFO | Pré-processamento das matrizes no host | Migração para PS+PL |
| 2 | ZYNQ | Ethernet + FIFO | Envio de dados já deslocados | Deslocamento incorporado ao hardware |
| 3 | ZYNQ | DMA + AXI Stream | Overhead de movimentação de dados | Transferência por blocos e menor latência |

> O ganho de desempenho não veio apenas do arranjo sistólico; ele dependeu fortemente da **evolução da infraestrutura de comunicação**.

---

### Integração com o Zynq e DMA/AXI Stream

![Integração do acelerador ao subsistema PS–PL via DMA](images/figures/zynq_dma.png)

*Figura 5 — Integração do acelerador ao subsistema PS–PL.*

- O DMA transfere blocos de dados entre a memória do sistema e a lógica programável.

![Wrapper sistólico integrado ao subsistema PS–PL](images/figures/systolic_wrapper.png)

*Figura 6 — Wrapper do acelerador sistólico.*

---

### Arquitetura Geral do Acelerador

![Diagrama em blocos da arquitetura proposta](images/figures/system_overview.png)

*Figura 7 — Diagrama em blocos da arquitetura proposta.*

Interface de E/S, buffers, escalonador, arranjo sistólico e unidade de controle compõem o sistema completo.

---

### Parametrização do arranjo sistólico

| Parâmetro | Descrição |
|---|---|
| `SIZE` | Dimensão do arranjo N×N |
| `WIDTH` | Largura dos operandos de entrada |

**Objetivo:** a mesma arquitetura-base pode ser reusada para diferentes tamanhos de problema, permitindo estudar escalabilidade.

> Aumentar $N$ eleva o número de PEs para $N^2$, o que favorece paralelismo, mas também aumenta a demanda por interconexão, recursos lógicos e margem temporal.

---

## 3. Verificação e Análises Experimentais

### Estratégia de verificação funcional

- Testbenches em SystemVerilog aplicaram vetores de teste representativos;
- Foram usados valores aleatórios e padrões específicos para exercitar caminhos distintos;
- As saídas do hardware foram comparadas com uma implementação de referência em software.

**Resultado principal:** as simulações confirmaram correspondência funcional entre a arquitetura RTL e o modelo de referência para os casos avaliados.

| Métrica | Valor |
|---|---|
| Tamanhos simulados | 2 a 128 (4 bits de entrada · 8 bits de saída) |
| Limite prático | 256+ — tempo de simulação/síntese elevado |

---

### Latência por etapa e por versão

| Versão | Escrita A/B | Array | Saída |
|:---:|:---:|:---:|:---:|
| 1.0 | $2N(2N-1)$ | $3N$ | $N^2$ |
| 2.0 | $2N^2$ | $3N$ | $N^2$ |
| 3.0 | $2N$ | $3N$ | $N$ |

> A versão otimizada reduz drasticamente o peso da comunicação: de termos quadráticos para comportamento **linear em $N$**.

---

### Efeito da otimização arquitetural

**Latência total por versão:**

| Versão | Expressão |
|:---:|---|
| 1.0 | $5N^2 + N + 15$ |
| 2.0 | $3N^2 + 3N + 15$ |
| 3.0 | $6N + 15$ |

> Ao deslocar funções de preparação para o hardware e transmitir dados em blocos, o sistema deixa de ser dominado por movimentação quadrática e passa a se aproximar do comportamento do próprio arranjo sistólico.

---

### Análise de temporização @ 333 MHz

![Slack de setup e hold em função de N](images/figures/timing.png)

*Figura 8 — Slack de setup e hold em função de N.*

- Até 16×16, o *setup slack* permanece positivo;
- O melhor valor aparece próximo de 8×8;
- Em 64×64, há violação de *setup* (−0,093 ns).

> Escalar o array aumenta o caminho crítico e dificulta o fechamento temporal.

---

### Throughput teórico do acelerador

![Throughput ideal em Mmatrizes/s](images/figures/throughput_theory.png)

*Figura 9 — Throughput ideal em Mmatrizes/s.*

- Mede a capacidade máxima do hardware sem penalidades de comunicação;
- Arranjos menores processam mais matrizes completas por segundo, devido ao menor custo de preenchimento/escoamento.

---

### Throughput mensurado com DMA

![Throughput observado em kmatrizes/s](images/figures/throughput_measured.png)

*Figura 10 — Throughput observado em kmatrizes/s.*

- O valor medido é bem menor que o teórico;
- O custo de iniciar transações e mover dados passa a dominar o tempo total, sobretudo para matrizes pequenas.

---

### Utilização absoluta de recursos da FPGA

![LUTs, registradores e CLBs por configuração](images/figures/util_abs.png)

*Figura 11 — LUTs, registradores e CLBs por configuração.*

- O crescimento acompanha aproximadamente $N^2$;
- Cada aumento de $N$ replica mais PEs e amplia interconexões.

> **Exemplo extremo — 64×64:** ~174 mil LUTs e 27,5 mil CLBs.

---

### Utilização percentual e limite da plataforma

![Ocupação percentual dos recursos do FPGA](images/figures/util_pct.png)

*Figura 12 — Ocupação percentual dos recursos do FPGA.*

- Até 32×32, a implementação ainda é confortável;
- Em 64×64, a ocupação chega a **76,1%** das LUTs e **96,1%** dos CLBs.

> A arquitetura escala, mas a plataforma escolhida impõe um teto físico claro.

---

### Potência consumida e decomposição interna

![Potência total, dinâmica e estática](images/figures/power.png)

*Figura 13 — Potência total, dinâmica e estática.*

![Decomposição da potência para a configuração 64×64](images/figures/power_breakdown.png)

*Figura 14 — Decomposição da potência para 64×64.*

- Para 64×64, a potência total chega a **3,991 W**, com dominância da parcela dinâmica.

---

## 4. Comparação e Conclusão

### Referência em software — ARM Cortex-A53 @ 1,2 GHz

![Tempo de execução da implementação em software](images/figures/cpu_sw.png)

*Figura 15 — Tempo da implementação em software.*

- O tempo cresce rapidamente com $N$;
- De 8,4 µs em 2×2 até 9314,3 µs em 32×32;
- O comportamento é coerente com o custo cúbico $O(N^3)$ do algoritmo clássico.

---

### Hardware medido vs. execução teórica do array

![Tempo medido do sistema PS+PL](images/figures/dma_us.png)

*Figura 16 — Tempo medido do sistema PS+PL.*

![Tempo medido vs. ideal do arranjo](images/figures/hw_vs_theory.png)

*Figura 17 — Tempo medido vs. ideal do arranjo.*

- O hardware permanece na faixa de dezenas de microssegundos, mas ainda acima do limite teórico devido ao custo de comunicação.

---

### Speedup do acelerador FPGA

![Ganho em relação à implementação em software](images/figures/speedup.png)

*Figura 18 — Speedup em relação à implementação em software.*

| Configuração | Speedup |
|:---:|:---:|
| 2×2 | ~0,5× |
| 8×8 | ~4,2× |
| 16×16 | ~30,1× |
| 32×32 | **>200×** |

---

### Resumo de resultados

| Arranjo | Setup | Potência total | Uso de LUTs | Observação |
|:---:|:---:|:---:|:---:|---|
| 2×2 |  positivo | ~0,61 W | 0,1% | Baixa carga computacional |
| 16×16 | positivo | ~1,08 W | 5,1% | Bom equilíbrio |
| 32×32 |  positivo | ~1,22 W | 19,1% | Alto speedup |
| 64×64 |  negativo | 3,99 W | 76,1% | Limite da plataforma |

> A configuração **32×32** é o ponto de operação mais interessante: combina forte aceleração com margem de implementação ainda viável.

---

### Limitações do trabalho

- Uso predominante de lógica geral em vez de DSPs dedicados;
- Maior dificuldade de timing para arranjos grandes;
- Ausência de otimizações avançadas de memória, como *tiling*;
- Avaliação focada em métricas de implementação, não em aplicações completas de IA.

> As limitações não invalidam os resultados; elas indicam os próximos passos para transformar a arquitetura em uma solução mais robusta e competitiva.

**Lição principal:** não basta acelerar o núcleo — é preciso alimentar e escoar dados com eficiência.

---

### Conclusões

**Resultados alcançados:**

- Arquitetura sistólica parametrizável implementada e validada em FPGA;
- Uso de DMA com barramentos HPC na Zynq;
- Análise experimental de latência, timing, recursos e potência;
- Comprovação de ganhos expressivos para matrizes maiores.

| Métrica | Valor |
|---|---|
| **Speedup máximo** | >200× (configuração 32×32) |
| **Maior desafio** | Escalabilidade física — timing, recursos e potência em 64×64 |

---

### Trabalhos futuros

**Melhorias arquiteturais:**

- Solução mista LUTs + DSPs dedicados;
- *Pipeline* a nível de data path;
- Hierarquia de memória com *buffering* e *tiling*.

**Direções de pesquisa:**

- Integração com processadores RISC-V;
- Avaliação com redes neurais e workloads reais;
- Múltiplos arranjos paralelos ou arranjos de maior dimensão.

---

*Obrigado!*
