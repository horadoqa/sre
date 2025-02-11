# SLIs, SLOs e SLAs

Junto com os orçamentos de erro estão os SLIs, SLOs e SLAs.

- SLI (Indicador de Nível de Serviço) : uma métrica que indica a qualquer momento o desempenho do seu serviço (por exemplo, disponibilidade, latência, rendimento, etc.)
- SLO (Objetivo de Nível de Serviço) : o valor-alvo para seu SLI ao longo de um período de tempo, acordado entre a empresa, os desenvolvedores e os operadores.
- SLA (Service Level Agreement) : as consequências se você não cumprir seus objetivos (por exemplo, devolver dinheiro)

Seu orçamento de erro é calculado como 100% - SLO ao longo de um período de tempo . Ele indica se seu sistema tem sido mais ou menos confiável do que o necessário ao longo de um certo período de tempo e quantos minutos de tempo de inatividade são permitidos durante esse período. 

Por exemplo, se seu SLO de disponibilidade for 99,9%, seu orçamento de erro em um período de 30 dias será (1 - 0,999) x 30 dias x 24 horas x 60 minutos = 43,2 minutos. Então, se seu sistema teve 10 minutos de inatividade nos últimos 30 dias e iniciou o período de 30 dias com o orçamento de erro total de 43,2 minutos não utilizado, então o orçamento de erro restante seria de 33,2 minutos.