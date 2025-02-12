# Agent do Datadog no Ansible

Instalar a Coleção Ansible do Datadog do Ansible Galaxy no seu servidor Ansible

```bash
ansible-galaxy collection install datadog.dd
```

Atualize seu manual para implantar o agente Datadog em seus hosts
Isso adicionará a função datadog ao seu manual.

Selecione a chave da API
- hosts: servers
  tasks:
    - name: Import the Datadog Agent role from the Datadog collection
      import_role:
        name: datadog.dd.agent
  vars:
    datadog_api_key: "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    datadog_site: "datadoghq.com"


Nota : Os nomes de host que você usa em seu inventário devem ser conhecidos pelo agente Datadog (caso contrário, o Datadog não pode agrupá-los). Você pode verificar quais nomes de host são conhecidos pelo agente executando este comando após o agente ser instalado:
sudo datadog-agent status

