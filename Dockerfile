FROM eclipse-temurin:17

ENV PORT 8080

CMD ["mvnw", "spring-boot:run"]
