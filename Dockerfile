# Use OpenJDK 11 as the base image
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY SimpleJavaApp.jar /app

# Command to run the JAR file
CMD ["java", "-jar", "SimpleJavaApp.jar"]
