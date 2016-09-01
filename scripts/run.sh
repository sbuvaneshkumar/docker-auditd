#!/bin/bash
echo "Starting Auditd"
exec /sbin/auditd -f -n
