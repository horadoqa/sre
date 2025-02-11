#!/bin/bash

DD_API_KEY=5e6f48a1512ec640032f8d181bf038a0 DD_SITE="datadoghq.com" bash -c "$(curl -L https://install.datadoghq.com/scripts/install_script_agent7.sh)"

sudo systemctl start datadog-agent