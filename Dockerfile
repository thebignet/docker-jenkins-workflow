FROM jenkins

MAINTAINER Jean Detoeuf <thebignet@gmail.com>

# for main web interface:
EXPOSE 8080

# will be used by attached slave agents:
EXPOSE 50000

COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt
