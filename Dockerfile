FROM openjdk:8-jre-alpine3.9
ENV MAVEN_VERSION 3.3.9
RUN mkdir -p /usr/share/maven \
  && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz \
    | tar -xzC /usr/share/maven --strip-components=1 \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
  
ENV MAVEN_HOME /usr/share/maven

VOLUME /root/.m2

CMD ["mvn"]
 
# copy the packaged jar file into our docker image
COPY target/*.jar /java.jar
 
# set the startup command to execute the jar
CMD ["java", "-jar", "/java.jar"]
