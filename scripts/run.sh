#!/bin/bash
echo "Starting Auditd"

exec /sbin/auditctl -R /etc/audit/audit.rules
exec /sbin/auditd -n
