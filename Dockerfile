FROM tomcat:8

MAINTAINER phithon <root@leavesongs.com>

RUN set -ex \
    && rm -rf /usr/local/tomcat/webapps/* \
    && chmod a+x /usr/local/tomcat/bin/*.sh

COPY fastjson-1.0.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080