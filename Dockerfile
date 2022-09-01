# Select Base Image 
FROM tomcat:8.0-alpine




# COPY will copy project war file to webapps directory in apache

COPY WebAppCal-1.4.3.war /usr/local/tomcat/webapps

EXPOSE 8090


CMD [“catalina.sh”, “run”]
