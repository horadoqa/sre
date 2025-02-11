# Criando o Dashboard com Métricas

### Passo 1: Criar um Novo Dashboard

1. Acesse a página inicial do Datadog.
2. No menu lateral, clique em **Dashboards** e, em seguida, clique em **New Dashboard**.

<div align="center">
    <img src="./images/new-dashboard-1.png" alt="Criar novo Dashboard">
</div>

### Passo 2: Configurar o Dashboard

1. Preencha o campo **Dashboard Name** com o nome desejado, por exemplo, **AWS**.
2. Escolha um modelo de dashboard (se necessário).
3. Clique em **Create Dashboard** para criar o novo painel.

<div align="center">
    <img src="./images/new-dashboard-2.png" alt="Configurações do Dashboard">
</div>

### Passo 3: Selecionar o Tipo de Gráfico

1. Escolha o tipo de gráfico adequado para as métricas que você deseja monitorar. Por exemplo, para métricas de tempo, um gráfico de série temporal pode ser ideal.
   
<div align="center">
    <img src="./images/time-series.png" alt="Selecionar gráfico de série temporal">
</div>

### Passo 4: Adicionar Métricas

1. Adicione as métricas necessárias ao gráfico, como **CPU**, **Memória** e **Disco**.
   
<div align="center">
    <img src="./images/cpu-mem-disk.png" alt="Métricas de CPU, Memória e Disco">
</div>

### Passo 5: Salvar e Ajustar o Dashboard

1. Após adicionar as métricas desejadas, revise as configurações do gráfico.
2. Salve o Dashboard e ajuste as visualizações conforme necessário.

---

## Conexões

Coletando Métricas de Conexões de Rede

Você pode monitorar a quantidade de conexões de rede com as métricas fornecidas pelo Datadog Agent. Essas métricas geralmente são encontradas na seção de Network do Datadog e podem incluir:

- network.tcp.connections: Número de conexões TCP ativas.
- network.tcp.open: Número de conexões TCP abertas.
- network.tcp.close_wait: Conexões TCP no estado de "close_wait".

## Banco de Dados

Se você deseja monitorar as conexões ativas de bancos de dados, como MySQL, PostgreSQL ou MongoDB, você pode configurar a integração de banco de dados do Datadog. Cada banco de dados oferece métricas específicas relacionadas às conexões:

- PostgreSQL: Métricas como pg_stat_activity podem ser monitoradas, mostrando as conexões ativas.
- MySQL: Métricas como Connections e Threads_connected mostram as conexões ativas ao banco de dados.
- MongoDB: Métricas como connections.current indicam o número de conexões ativas ao MongoDB.
