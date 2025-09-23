FROM openjdk:21-jdk
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENV HOSTNAME=auth.code-factory.co.kr
ENV SPRING_PROFILES_ACTIVE=prod
ENTRYPOINT ["java", "-jar", "-Dhostname=${HOSTNAME}", "app.jar"]
EXPOSE 3003