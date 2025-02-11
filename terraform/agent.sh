#!/bin/bash

DD_API_KEY=$DD_API_KEY DD_SITE="datadoghq.com" bash -c "$(curl -L https://install.datadoghq.com/scripts/install_script_agent7.sh)"

sudo systemctl start datadog-agent

# export DD_API_KEY=