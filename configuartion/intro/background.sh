#!/bin/bash

set -x # to test stderr output in /var/log/killercoda

echo starting... # to test stdout output in /var/log/killercoda

kubectl apply -f web.yml

bash /tmp/check_pod_running.sh web default

touch /tmp/finished