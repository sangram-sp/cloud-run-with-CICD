# ---- Build stage: compiles the jar using Maven ----
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# ---- Run stage: lightweight JRE image to actually run the app ----
FROM eclipse-temurin:17-jre
WORKDIR /app
ARG JAR_FILE=target/learning-cloud-run-1.0.0.jar
COPY --from=build /app/${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/app.jar"]