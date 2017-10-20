FROM jboss/wildfly:10.1.0.Final

MAINTAINER Maxime Guillod <maxime.guillod@heig-vd.ch>

COPY mysql-connector.jar /opt/jboss/wildfly/standalone/deployments/
COPY standalone.xml /opt/jboss/wildfly/standalone/configuration/

# Set the user and the password
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent

# Add .war to test deplayement
ADD MVCApp.war /opt/jboss/wildfly/standalone/deployments/

# Install wget
USER root
RUN yum update -y && yum -y install wget && yum clean all
USER jboss

# Download & deplay app
RUN wget $(curl -s https://api.github.com/repos/lognaume/HEIGVD-AMT-Project/releases/latest | grep browser_download_url | cut -d '"' -f 4)
RUN mv WebApp.war /opt/jboss/wildfly/standalone/deployments/

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
