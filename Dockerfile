FROM redhat-openjdk18-openshift
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=/spring-boot-starter-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
