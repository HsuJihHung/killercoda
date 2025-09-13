#!/bin/bash

ENV_NAME=$(kubectl get pod web \
  -o jsonpath="{range .spec.containers[*].env[?(@.name=='WELCOME_TEXT')]}{@.name}{'\n'}{end}")
[[ $ENV_NAME == "WELCOME_TEXT" ]] && exit 0 || exit 1