#!/bin/bash

color=$(kubectl get pod web -o jsonpath='{.spec.containers[0].env[?(@.name=="BACKGROUND_COLOR")].value}')
[[ $color == "red" ]] && exit 0 || exit 1