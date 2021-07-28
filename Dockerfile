FROM openjdk
COPY src/test/java/*Test.java
CMD ["mvn test", "src/test/java/*Test.java"]
