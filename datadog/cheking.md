# Verificações

## Verificar se o agent está sendo executado

Acessar a instância

```bash
ssh ec2-user@ec2-<IP PUBLICO DA INSTÂNCIA>.compute-1.amazonaws.com
```

Para verificar se o **Datadog Agent** está sendo executado dentro de uma instância na AWS, você pode seguir alguns passos simples. O Datadog Agent é um processo que coleta métricas, logs e traces de sua infraestrutura e os envia para o Datadog. Aqui estão alguns métodos para verificar se o agente está ativo:

### 1. **Verificando o status do agente via terminal (SSH)**

Se você tem acesso à instância via SSH, pode se conectar à instância e verificar diretamente o status do agente. Dependendo do sistema operacional da instância (por exemplo, Ubuntu, Amazon Linux, etc.), os comandos podem variar ligeiramente.

- **Para Linux (Ubuntu, Debian, CentOS, Amazon Linux, etc.):**
  
  - Para verificar o status do agente, execute o seguinte comando:
    ```bash
    sudo systemctl status datadog-agent
    ```
    Este comando irá mostrar o status do Datadog Agent, incluindo se está em execução ou se falhou ao iniciar.

  - Alternativamente, você pode verificar os processos em execução:
    ```bash
    ps aux | grep datadog-agent
    ```
    Esse comando deve listar o processo do `datadog-agent` se ele estiver em execução.

Caso esteja `inactive`

```bash
sudo systemctl start datadog-agent
```

Reexecutar o comando

```bash
sudo systemctl status datadog-agent
```

- **Verificar os logs para identificar falhas**
Para entender o motivo pelo qual o agente não está sendo iniciado, consulte os logs do Datadog Agent:

```bash
sudo journalctl -u datadog-agent
```

- **Para verificar se o agente está coletando métricas corretamente:**
  ```bash
  sudo datadog-agent status
  ```
  Este comando exibirá informações detalhadas sobre o estado do agente, incluindo métricas coletadas, status de integração, etc. Ele pode ser útil para diagnosticar se o agente está operando corretamente.

### 2. **Verificando logs do agente**

Os logs do Datadog Agent podem fornecer informações úteis sobre seu status. Você pode visualizar os logs no diretório onde os logs do Datadog são armazenados.

- Para visualizar os logs em uma instância Linux:
  ```bash
  sudo tail -f /var/log/datadog/agent.log

  sudo tail -n 50 /var/log/datadog/agent.log
  ```

Esse comando irá mostrar as últimas entradas de log e você poderá verificar se há erros ou se o agente foi iniciado corretamente.

### 3. **Verificando as métricas no Datadog**

Se o agente estiver funcionando corretamente, você deve começar a ver as métricas e os dados enviados para a plataforma Datadog. 

- Faça login no **Datadog**.
- Acesse a seção de **Monitoramento** ou **Metrics** no Datadog.
- Verifique se as métricas associadas à sua instância da AWS estão sendo exibidas.

Se você não estiver vendo dados, pode ser necessário verificar o arquivo de configuração ou as permissões da instância (como as permissões do IAM).

### 4. **Verificando a Instância no Console AWS**

Se você configurou o Datadog para enviar dados via integração com a AWS, você pode verificar no **Console da AWS** se a instância está com as permissões e configurações adequadas para o agente:

- **Verifique as permissões do IAM**: Certifique-se de que a instância tem a política IAM apropriada para enviar métricas para o Datadog.
- **Verifique as instâncias e integrações da AWS**: Acesse a seção "Integrations" no Datadog e verifique se a instância está corretamente configurada para enviar métricas.

### 5. **Usando o Datadog Agent Check**

O Datadog oferece um comando que verifica se o agente está coletando as métricas corretamente. No terminal da instância, execute:
```bash
sudo datadog-agent check
```
Esse comando executará um "check" para verificar se o agente está funcionando como esperado, reportando qualquer falha ou problema.


## Reinstalar o Datadog Agent (se necessário)
Se o agente continuar com problemas após tentar as etapas acima, pode ser útil reinstalar o Datadog Agent para garantir que ele esteja corretamente configurado:

```bash
sudo apt-get remove datadog-agent  # Para remover o pacote, no caso de distribuições Debian/Ubuntu.
sudo apt-get install datadog-agent # Para instalar novamente.
```

---

### Resumo

Para verificar se o Datadog Agent está sendo executado corretamente em sua instância AWS, você pode:
- Verificar o status do serviço com `systemctl` ou `ps aux`.
- Examinar os logs do agente.
- Verificar as métricas no Datadog.
- Garantir que as permissões do IAM estão configuradas corretamente.

Essas etapas devem ajudar a garantir que o agente esteja funcionando e coletando as métricas corretamente.