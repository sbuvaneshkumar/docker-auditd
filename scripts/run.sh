#!/bin/bash
echo "Starting Auditd"

exec /sbin/auditd -n

echo "Adding custom rules"

exec /sbin/auditctl -R /etc/audit/rules.d/custom.rules
#exec /sbin/auditctl -R /data/audit/custom.rules
exec /sbin/auditctl -l
