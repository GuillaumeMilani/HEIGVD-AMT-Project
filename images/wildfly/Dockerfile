FROM jboss/wildfly:10.1.0.Final

MAINTAINER Maxime Guillod <maxime.guillod@heig-vd.ch>

COPY mysql-connector.jar /opt/jboss/wildfly/standalone/deployments/
COPY standalone.xml /opt/jboss/wildfly/standalone/configuration/

# Set the user and the password
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent

# Install wget
USER root
RUN yum update -y && yum -y install wget && yum clean all
USER jboss

COPY startup.sh /opt/jboss/

CMD ["/bin/bash", "/opt/jboss/startup.sh"]
