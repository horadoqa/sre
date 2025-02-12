# Verificando KEY

```bash
sudo cat /etc/datadog-agent/datadog.yaml | grep api_key
```

## @param api_key - string - required
api_key: 

curl -I https://api.datadoghq.com/api/v1/validate?api_key=5e6f48a1512ec640032f8d181bf038a0