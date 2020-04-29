FROM tomcat:8.5.30-jre8-alpine
LABEL maintainer="goodvviin@mail.ru"
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/conf/context.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY target/demo-backend.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]