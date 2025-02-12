# Ansible

## Instalar a Coleção Datadog do Ansible Galaxy: 

No servidor onde você está executando o playbook, instale a coleção com o seguinte comando:

```bash
ansible-galaxy collection install datadog.dd

Starting galaxy collection install process
Process install dependency map
Starting collection install process
Downloading https://galaxy.ansible.com/api/v3/plugin/ansible/content/published/collections/artifacts/datadog-dd-5.8.0.tar.gz to /home/rfahham/.ansible/tmp/ansible-local-833157i7ft6fj/tmpmt6zcu6u/datadog-dd-5.8.0-9knqkwvm
Installing 'datadog.dd:5.8.0' to '/home/rfahham/.ansible/collections/ansible_collections/datadog/dd'
datadog.dd:5.8.0 was installed successfully
```

## Executando o playbook

```bash
ansible-playbook -i hosts.ini datadog_nginx.yml
```

