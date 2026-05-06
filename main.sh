#!/bin/bash

kubectl delete -f namespace.yml
kubectl delete -f headless.service.yml
kubectl delete -f statefulset.yml
kubectl delete -f job.yml


kubectl apply -f namespace.yml
kubectl apply -f headless.service.yml
kubectl apply -f statefulset.yml
kubectl apply -f job.yml