FROM maven:3.9.9-eclipse-temurin-23 AS build

ADD . /home/project
RUN mvn -f /home/project/pom.xml clean package -DskipTests

FROM eclipse-temurin:24-jre

ARG JAR_FILE=/home/project/target/*.jar
COPY --from=build ${JAR_FILE} spring-boot-standalone.jar
COPY etc/start.sh start.sh
ENTRYPOINT ["./start.sh"]
