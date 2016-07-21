FROM registry.access.redhat.com/rhel7
#FROM centos

MAINTAINER Nicolas Dordet <nicolas@redhat.com>

RUN yum -y install http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-6.noarch.rpm

RUN yum install audit ping -y && yum clean all

ADD configs/audit.rules /etc/audit/
ADD scripts/run.sh /
#RUN /sbin/auditctl -R /etc/audit/audit.rules
#ENTRYPOINT ["/run.sh"]
#CMD ["/sbin/auditd","-n"]
CMD ["/usr/bin/ping","localhost"]

