FROM eclipse-temurin:17-jdk-alpine
EXPOSE 8085

# Set environment variable for app home
ENV APP_HOME /usr/src/app

# Create the app directory (if it doesn't exist)
RUN mkdir -p $APP_HOME

# Copy the jar file(s) into the app directory
COPY target/*.jar $APP_HOME/

# Command to run the application (change app.jar if needed)
CMD ["java", "-jar", "/usr/src/app/twitter-app-0.0.18.jar"]
