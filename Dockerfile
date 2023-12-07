FROM maven:3.8.6-openjdk-8-slim
 
WORKDIR /app
 
COPY pom.xml .
RUN mvn clean package
 
COPY target/*.jar .
EXPOSE 8080
 
CMD ["java", "-jar", "*.jar"]

