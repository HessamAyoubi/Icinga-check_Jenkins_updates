# Nagios/Icinga Plugin: Check Jenkins updates
This plugin uses the Jenkins API to check for updates to plugins that have been marked as "Security", "Recommended", or "Important" by the Jenkins update center. It then prints the names of the plugins that have updates available and exits with a status code of 0 if there are no important updates available or 1 if there are updates available.
* If you are using the "Password" version, you will need to change the JENKINS_URL, JENKINS_USER, and JENKINS_PASSWORD variables to match your Jenkins server's URL, username, and password.
* If you are using the "Token" version, you will need to change the JENKINS_URL and JENKINS_ACCESS_TOKEN variables to match your Jenkins server's URL and access token respectively.
