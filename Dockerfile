FROM openjdk:8-jre-alpine3.9

EXPOSE 80/tcp
EXPOSE 80/udp
EXPOSE 443

# copy the packaged jar file into our docker image
COPY target/*.jar /java.jar
 
# set the startup command to execute the jar
CMD ["java", "-jar", "/java.jar"]
