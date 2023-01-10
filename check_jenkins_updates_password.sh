#!/bin/bash

JENKINS_URL="http://your.jenkins.server:8080"
JENKINS_USER="your_username"
JENKINS_PASSWORD="your_password"

JENKINS_CLI_URL="$JENKINS_URL/jnlpJars/jenkins-cli.jar"

PLUGIN_UPDATES=$(curl --silent --user "$JENKINS_USER:$JENKINS_PASSWORD" "$JENKINS_URL/pluginManager/api/xml?depth=1&xpath=/*/*/updateCenter/warning[starts-with(name,%27Security%27)%20or%20starts-with(name,%27Recommended%27)%20or%20starts-with(name,%27Important%27)]/../../../name/text()" | tr ' ' '\n' | sort -u | tr '\n' ' ')

if [ -z "$PLUGIN_UPDATES" ]; then
    echo "OK - No important updates available"
    exit 0
else
    echo "WARNING - Important updates available: $PLUGIN_UPDATES"
    exit 1
fi
