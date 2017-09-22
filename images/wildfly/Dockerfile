FROM jboss/wildfly:10.1.0.Final

MAINTAINER Olivier Liechti <olivier.liechti@heig-vd.ch>

EXPOSE 8080 9990

RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent

ADD MVCApp.war /opt/jboss/wildfly/standalone/deployments/

USER root

RUN yum update -y && yum -y install git && yum clean all

USER jboss

RUN git clone https://github.com/lognaume/amt-project.git


CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]

