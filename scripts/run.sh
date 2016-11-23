#!/bin/bash
echo "Starting Auditd"

exec /sbin/auditd -n
exec /sbin/auditctl -R /etc/audit/rules.d/custom.rules
#exec /sbin/auditctl -R /data/audit/custom.rules
echo "exec /sbin/auditctl -l"
