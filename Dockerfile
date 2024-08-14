FROM eclipse-temurin:22-jre
COPY target/spring-boot-standalone-0.0.1-SNAPSHOT.jar spring-boot-standalone.jar
COPY etc/start.sh start.sh
ENTRYPOINT ["./start.sh"]
