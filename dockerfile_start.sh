#!/bin/bash

#TODO : voir comment utiliser sub avec image RHEL

docker build \
--no-cache \
--build-arg SUBSCRIPTION_USER=user \
--build-arg SUBSCRIPTION_PASSWORD=password \
--build-arg SUBSCRIPTION_POOL=poolid \
--build-arg HOSTNAME=master1.ose-exemple.com \
-t docker.io/auditd/atomic-auditd:v1 \
.
