FROM openjdk:11.0.16-jdk

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8761
ENTRYPOINT ["java", "-jar", "app.jar"]