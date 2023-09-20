FROM tomcat:8.0-alpine

ADD  mvc-test01.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]