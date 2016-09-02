#!/bin/bash
echo "Starting Auditd"
exec setcap cap_audit_write,cap_audit_control,cap_net_raw,cap_net_admin+p /sbin/auditd -f -n
