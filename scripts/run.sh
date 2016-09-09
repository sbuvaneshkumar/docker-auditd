#!/bin/bash
echo "Starting Auditd"

exec /sbin/auditd -n
exec /sbin/auditctl -R /etc/audit/audit.rules
