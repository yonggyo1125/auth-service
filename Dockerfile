FROM openjdk:21-jdk
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENV HOSTNAME=auth.code-factory.co.kr
ENTRYPOINT ["java", "-jar", "app.jar", "--eureka.client.hostname=${HOSTNAME}"]
EXPOSE 3003