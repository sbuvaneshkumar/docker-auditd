FROM registry.access.redhat.com/rhel7

MAINTAINER Nicolas Dordet <nicolas@redhat.com>

RUN yum install audit -y && yum clean all
RUN mkdir -p /opt/jenkins && touch /opt/jenkins/test1 && touch /opt/jenkins/test2 && touch /opt/jenkins/test3
#RUN mkdir -p /data/audit && chmod 777 /data/audit
#ADD configs/custom.rules /data/audit/
COPY configs/custom.rules /etc/audit/rules.d/
ADD scripts/run.sh /

#RUN setcap cap_net_admin,cap_net_raw,cap_audit_write,cap_audit_control+p /sbin/auditd
#RUN /sbin/auditctl -R /etc/audit/audit.rules
ENTRYPOINT ["/run.sh"]

