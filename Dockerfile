FROM registry.access.redhat.com/rhel7

MAINTAINER Nicolas Dordet <nicolas@redhat.com>

RUN yum install audit -y && yum clean all

ADD configs/* /etc/audit/rules.d/
ADD scripts/run.sh /

RUN setcap cap_net_admin,cap_net_raw,cap_audit_write,cap_audit_control+p /sbin/auditd
#RUN /sbin/auditctl -R /etc/audit/audit.rules
ENTRYPOINT ["/run.sh"]

