FROM eclipse-temurin:17-jdk-alpine

EXPOSE 8080

# Set environment variable for the application home directory
ENV APP_HOME=/usr/src/app

# Copy the JAR file from the app directory to the Docker image
COPY app/*.jar $APP_HOME/app.jar

# Set the working directory to the APP_HOME
WORKDIR $APP_HOME

# Command to run the application
CMD ["java", "-jar", "app.jar"]
