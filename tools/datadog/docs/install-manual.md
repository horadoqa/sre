# Instalação manual

## Em um host x86_64, configure o repositório Yum do Datadog em seu sistema criando com o conteúdo: /etc/yum.repos.d/datadog.repo

[datadog]
name=Datadog, Inc.
baseurl=https://yum.datadoghq.com/stable/7/x86_64/
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://keys.datadoghq.com/DATADOG_RPM_KEY_CURRENT.public
       https://keys.datadoghq.com/DATADOG_RPM_KEY_B01082D3.public
       https://keys.datadoghq.com/DATADOG_RPM_KEY_FD4BF915.public
       https://keys.datadoghq.com/DATADOG_RPM_KEY_E09422B3.public


## Em um host arm64, configure o repositório Yum do Datadog em seu sistema criando com o conteúdo: /etc/yum.repos.d/datadog.repo

[datadog]
name=Datadog, Inc.
baseurl=https://yum.datadoghq.com/stable/7/aarch64/
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://keys.datadoghq.com/DATADOG_RPM_KEY_CURRENT.public
       https://keys.datadoghq.com/DATADOG_RPM_KEY_B01082D3.public
       https://keys.datadoghq.com/DATADOG_RPM_KEY_FD4BF915.public
       https://keys.datadoghq.com/DATADOG_RPM_KEY_E09422B3.public

## Se estiver atualizando do Agente 5 ou 6, exclua a chave RPM GPG obsoleta:

```bash
sudo sh -c 'if rpm -q gpg-pubkey-4172a230-55dd14f6 >/dev/null; then rpm --erase gpg-pubkey-4172a230-55dd14f6; fi'
```

## Atualize seu repositório yum local e instale o Agente:

```bash
sudo yum install datadog-agentsudo yum makecache
sudo yum install datadog-agent
```

## Importe opcionalmente a configuração existente do Agente 5 se estiver atualizando do Agente 5 (somente 5.17+)

```bash
sudo -u dd-agent -- datadog-agent import /etc/dd-agent /etc/datadog-agent
```

## Como alternativa, copie a configuração de exemplo e conecte sua chave de API ():

```bash
sudo sh -c "sed 's/api_key:.*/api_key: /' /etc/datadog-agent/datadog.yaml.example > /etc/datadog-agent/datadog.yaml"
```

## Configure sua região do Datadog:

```bash
sudo sh -c "sed -i 's/# site:.*/site: datadoghq.com/' /etc/datadog-agent/datadog.yaml"
```

## Verifique se as permissões estão corretas:

```bash
sudo sh -c "chown dd-agent:dd-agent /etc/datadog-agent/datadog.yaml && chmod 640 /etc/datadog-agent/datadog.yaml"
```

## Reinicie o Agente para Amazon Linux 2.0:

```bash
sudo systemctl restart datadog-agent.service
```

## Reinicie o Agente para Amazon Linux 1.0:

```bash
sudo initctl start datadog-agent
```

