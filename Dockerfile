FROM registry.access.redhat.com/rhel7

MAINTAINER Nicolas Dordet <nicolas@redhat.com>

RUN yum install audit -y && yum clean all

ADD configs/* /etc/audit/
ADD scripts/run.sh /
RUN /sbin/auditctl -R /etc/audit/audit.rules
RUN  /sbin/auditd
ENTRYPOINT ["/run.sh"]

