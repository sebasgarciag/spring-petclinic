FROM eclipse-temurin:17

ENV PORT 8080

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve

COPY src ./src

CMD ["./mvnw", "spring-boot:run" , "-Dspring-boot.run.profiles=postgres"]
