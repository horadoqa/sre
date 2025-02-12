# Aplicando o Terraform com as variáveis

```bash
terraform plan -var-file=env/dev.tfvars
```

## Criando a instância com Terraform

```bash
terraform apply -var-file=env/dev.tfvars -auto-approve
```

## Destruindo a instância com Terraform

```bash
terraform destroy -var-file=env/dev.tfvars -auto-approve
```

