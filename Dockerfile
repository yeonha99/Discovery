FROM openjdk:11-jdk
VOLUME /tmp
ARG JAR_FILE=./target/Discovery-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8761
ENTRYPOINT ["java","-jar","-Dvertx.disableDnsResolver=true","/app.jar"]
