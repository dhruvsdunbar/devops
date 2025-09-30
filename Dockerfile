# Use OpenJDK 17 as base (labs usually use JDK 17)
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy the fat JAR built by Maven into the container
COPY target/seMethods-1.0-SNAPSHOT-jar-with-dependencies.jar app.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
