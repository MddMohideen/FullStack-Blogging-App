# Stage 1: Build the application
FROM maven:3.8.6-eclipse-temurin-17 AS builder
WORKDIR /usr/src/app
COPY . .
RUN mvn clean package

# Stage 2: Create the final runtime image
FROM eclipse-temurin:17-jre-alpine
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app/target/app.jar .
CMD ["java", "-jar", "app.jar"]
