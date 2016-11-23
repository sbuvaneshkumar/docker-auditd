#!/bin/bash
echo "Starting Auditd"

exec /sbin/auditd -n
exec /sbin/auditctl -R /etc/auditd/rules.d/custom.rules
exec /sbin/auditctl -l
