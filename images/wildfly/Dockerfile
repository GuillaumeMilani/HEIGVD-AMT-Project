FROM jboss/wildfly:10.1.0.Final

MAINTAINER Maxime Guillod <maxime.guillod@heig-vd.ch>

EXPOSE 8080 9990

# Set the user and the password
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent

# Add .war 
ADD MVCApp.war /opt/jboss/wildfly/standalone/deployments/

# Install git
USER root
RUN yum update -y && yum -y install git && yum clean all
USER jboss

# Download & comlile our source 
# RUN git clone https://github.com/lognaume/amt-project.git
# RUN cd amt-project/WebApp
# RUN jar -cvf build.war *
# RUN mv build.war /opt/jboss/wildfly/standalone/deployments/

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
