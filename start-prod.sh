#!/bin/bash
set -e

# Login and export the token
export INFISICAL_TOKEN=$(infisical login \
    --method=universal-auth \
    --client-id=$(jq -r .clientId .machine.infisical.json) \
    --client-secret=$(jq -r .clientSecret .machine.infisical.json) \
    --domain=$(jq -r .domain .machine.infisical.json) \
    --machine-identity-id=$(jq -r .machineIdentityId .machine.infisical.json) \
    --plain \
    --silent)

# Use the exported token for the run command
exec infisical run \
    --token=$INFISICAL_TOKEN \
    --projectId=$(jq -r .projectId .machine.infisical.json) \
    --env=prod \
    --domain=$(jq -r .domain .machine.infisical.json) \
    --command "docker-compose -f docker-compose.prod.yaml up --build -d"