FROM tomcat:jdk21
LABEL author:diya

ENV APPPORT 8080
ENV DESTPATH /usr/local/tomcat/webapps/
EXPOSE $APPPORT
COPY webapp/target/webapp.war $DESTPATH
CMD ["catalina.sh", "run"]