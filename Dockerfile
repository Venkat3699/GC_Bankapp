# # Use the official Eclipse Temurin image as a base
# FROM eclipse-temurin:17-jdk-alpine

# # Set the working directory
# ENV APP_HOME=/usr/src/app
# WORKDIR $APP_HOME

# # Copy the JAR file from the app directory to the Docker image
# COPY app/*.jar $APP_HOME/app.jar

# # Expose the application port (adjust as necessary)
# EXPOSE 8080

# # Command to run the application
# CMD ["java", "-jar", "app.jar"]



# Use the Eclipse Temurin JDK 17 Alpine image as a parent image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY app/*.jar /usr/src/app/app.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "app.jar"]