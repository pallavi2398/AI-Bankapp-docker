# Build stage
FROM eclipse-temurin:21-jdk-jammy AS build

WORKDIR /app

COPY . .

RUN chmod +x mvnw && ./mvnw clean package -DskipTests

# Run stage - alpine has significantly fewer CVEs than ubuntu/jammy
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

# Pull latest security patches for OS libraries
RUN apk update && apk upgrade --no-cache

# Copy only the built artifact
COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
