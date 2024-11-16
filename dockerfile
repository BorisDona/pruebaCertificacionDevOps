# Usa una imagen base de Java
FROM openjdk:8-jdk-alpine
# Copia el archivo JAR compilado al contenedor
COPY target/myapp-1.0-SNAPSHOT.jar /app/myapp.jar
# Define el comando que ejecutará la aplicación
ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]
# Expone el puerto en el que la aplicación estará escuchando
EXPOSE 8080
