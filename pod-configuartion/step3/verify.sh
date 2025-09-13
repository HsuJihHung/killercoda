#!/bin/bash

ENV_NAME=$(kubectl get pod web \
  -o jsonpath="{range .spec.containers[*].env[?(@.name=='API_TOKEN')]}{@.name}{'\n'}{end}")
[[ $ENV_NAME == "API_TOKEN" ]] && exit 0 || exit 1