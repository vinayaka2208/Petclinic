FROM tomcat 
MAINTAINER Vinayaka Veerachar
RUN rm -rf /usr/local/tomcat/webapps/*
EXPOSE 8082
ADD target/petclinic.war /usr/local/tomcat/webapps/myapp.war
ENTRYPOINT ["java","-jar","/petclinic.war"]
