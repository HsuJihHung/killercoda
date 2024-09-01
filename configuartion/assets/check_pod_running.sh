#!/bin/bash

pod_name=$1
namespace=$2

# Get the pod status

# Check if any matching pod is running
while true
do
  pod_status=$(kubectl get pod "$pod_name" -n "$namespace" -o jsonpath='{.status.phase}')
  if [[ -n "$pod_status" ]]; then
    echo "Pod is running."
    break;
  else
    echo "Pod not running, Current status: $pod_status";
    sleep 1;
  fi
done