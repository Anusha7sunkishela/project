# Select Base Image 
FROM tomcat:8.0-alpine
ARG finalName



# COPY will copy project war file to webapps directory in apache

COPY finalName.war /usr/local/tomcat/webapps

EXPOSE 8090


CMD [“catalina.sh”, “run”]
