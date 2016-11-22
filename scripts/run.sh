#!/bin/bash
echo "Starting Auditd"

exec /sbin/auditd -n
exec /sbin/auditctl -R /data/custom.rules
