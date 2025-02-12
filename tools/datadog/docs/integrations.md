# Integrations

Datadog provides three main types of integrations

- **Agent-based integrations**: are installed with the Datadog Agent and use a Python Class melthod called check to define the metrics to collect.
- **Authentication (crawler) based**: integrations are set up in Datadog where you provide credentials for obtaining metrics with the API.
    - AWS
    - GCP

- **Library integrations**: are language-specific packages that you can import into your applications to snd traces, events, logs and metrics to Datadog


The Datadog Agent on a host

O Datadog é um software opensource, de código aberto, executa um agent dentro dos hosts ou containers, coletando os eventos, logs e métricas
e envia para o DATADOG.

One-step Install - Com apenas um comando o agente é executado no host

Disponivéis para diversas plataformas

Um vez instalado os agents, podemos listar os checks que estão disponíveis para uso.

```bash
ls /etc/datadog-agent/conf.d
```

São mais de 700 integrações

Atendem tanto a infraestrutura como plataformas como serviço

