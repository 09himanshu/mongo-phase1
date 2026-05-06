#!/bin/bash

set -eou pipefail

BASE_DIR=$(cd "$(dirname "$0")" && pwd)

YAML_DIR="${BASE_DIR}/yaml"

kubectl apply -f "$YAML_DIR/namespace.yml"
kubectl apply -f "$YAML_DIR/pv.yml"
kubectl apply -f "$YAML_DIR/headlessService.yml"
kubectl apply -f "$YAML_DIR/statefulset.yml"

sleep 90

kubectl apply -f "$YAML_DIR/job.yml"

