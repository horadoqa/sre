<div>
   <img src="./sre/images/sitereliability.svg">
</div>

**SRE (Site Reliability Engineering)** é uma disciplina dentro da engenharia de software focada em garantir a confiabilidade, escalabilidade e performance de sistemas complexos em grande escala. A prática de SRE foi criada pelo Google, a partir da necessidade de garantir que os serviços da empresa fossem altamente disponíveis e eficientes, ao mesmo tempo em que se mantinha a agilidade no desenvolvimento de novos recursos.

**Principais aspectos do SRE incluem:**

1. **Automação e Eficiência**: SRE busca automatizar tarefas repetitivas e operacionais para permitir que as equipes se concentrem em resolver problemas de maior impacto. Isso ajuda a reduzir a necessidade de intervenções manuais e melhora a eficiência do time.

2. **SLIs, SLAs e SLOs**: 
   - **SLI (Service Level Indicator)**: Métricas que indicam a saúde de um serviço, como tempo de resposta ou taxa de erro.
   - **SLO (Service Level Objective)**: Objetivo de nível de serviço, que define uma meta a ser alcançada em relação aos SLIs. Exemplo: "99,9% de disponibilidade em um mês".
   - **SLA (Service Level Agreement)**: Acordo formal com os clientes, que especifica as expectativas de nível de serviço. O SLA pode ter penalidades em caso de não cumprimento dos SLOs.

3. **Balanceamento de confiabilidade e velocidade**: Enquanto a confiabilidade busca evitar falhas e garantir a estabilidade dos sistemas, a velocidade de desenvolvimento de novas funcionalidades não pode ser comprometida. O SRE busca encontrar o equilíbrio entre essas duas prioridades.

4. **Error Budget (Orçamento de Erros)**: Em vez de buscar uma confiabilidade de 100%, o SRE estabelece um "orçamento de erros", permitindo um pequeno número de falhas. Esse orçamento é calculado com base no SLO e permite que as equipes tomem decisões mais informadas sobre onde focar os esforços, seja em melhorar a confiabilidade ou em desenvolver novos recursos.

5. **Cultura de colaboração**: A prática de SRE promove uma colaboração intensa entre as equipes de desenvolvimento e operação, garantindo que ambas as partes compartilhem responsabilidades pela confiabilidade do sistema.

6. **Monitoramento e Resposta a Incidentes**: O monitoramento contínuo e a rápida detecção de falhas são cruciais no SRE. Quando ocorre uma falha, as equipes de SRE devem ser capazes de responder rapidamente para mitigar o impacto e restaurar o serviço.

7. **Melhoria contínua**: O SRE utiliza práticas como post-mortem e análise de incidentes para aprender com falhas passadas e evitar que se repitam, melhorando continuamente a infraestrutura e os processos.

Em resumo, o SRE busca transformar as práticas de operações em uma abordagem mais automatizada e orientada por métricas, utilizando técnicas de engenharia de software para garantir que os sistemas operem de maneira eficiente e confiável.

- [datadog](./datadog/datadog.md)
- [prometheus + Grafana](./prometheus-grafana/)