# Select Base Image 
FROM tomcat:8.0-alpine
ARG version



# COPY will copy project war file to webapps directory in apache

COPY WebAppCal-version.war /usr/local/tomcat/webapps

EXPOSE 8090


CMD [“catalina.sh”, “run”]
