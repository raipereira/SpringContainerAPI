# Using OpenJDK version 17 as the base image
FROM openjdk:17-alpine
# Create a new app directory in the container for the application files
RUN mkdir /app
# Copy the compiled executable files/folders from host machine filesystem to the container/image's filesystem
COPY target/SpringAPI-0.0.1.jar /app
# Set the working directory for where next commands will execute at
WORKDIR /app
# Define the command to run the app when the contain is started
CMD ["java", "-jar", "./SpringAPI-0.0.1.jar"]
#FROM openjdk:17-alpine
#ARG JAR_FILE=target/*.jar
#COPY ./target/ADSRestAPI-0.0.1.jar app.jar
#ENTRYPOINT ["java", "jar", "/app.jar"]
