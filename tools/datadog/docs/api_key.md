# Verificando KEY

```bash
sudo cat /etc/datadog-agent/datadog.yaml | grep api_key
```

## @param api_key - string - required
api_key: 

curl -I https://api.datadoghq.com/api/v1/validate?api_key=