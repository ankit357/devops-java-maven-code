FROM openjdk
COPY src/test/java/*Test.java /*Test.java
CMD ["mvn test", "/*Test.java"]
