# Stage 1: Build the application
FROM eclipse-temurin:17-jdk-alpine
EXPOSE 8080
ENV APP_HOME /usr/src/app

# The destination is now a directory by adding a trailing "/"
COPY target/*.jar $APP_HOME/

# Command to run the application
CMD ["java", "-jar", "$APP_HOME/app.jar"]
