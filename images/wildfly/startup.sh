#!/bin/bash
# Get app's last release
wget $(curl -s https://api.github.com/repos/lognaume/HEIGVD-AMT-Project/releases/latest | grep browser_download_url | cut -d '"' -f 4)

# Deploy
mv WebApp.war /opt/jboss/wildfly/standalone/deployments/

# Run Wildfly
/opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0
