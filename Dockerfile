# Select Base Image 
FROM tomcat:8.0-alpine
ARG PROJECT_VERSION



# COPY will copy project war file to webapps directory in apache

COPY PROJECT_VERSION.war /usr/local/tomcat/webapps

EXPOSE 8090


CMD [“catalina.sh”, “run”]
