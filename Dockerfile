# Select Base Image 
FROM tomcat:8.0-alpine




# COPY will copy project war file to webapps directory in apache

COPY ./target/*.war /usr/local/tomcat/webapps




