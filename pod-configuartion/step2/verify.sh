#!/bin/bash

text=$(kubectl get pod web -o jsonpath='{.spec.containers[0].env[?(@.name=="WELCOME_TEXT")].value}')
[[ $text == "歡迎來到設定教學" ]] && exit 0 || exit 1