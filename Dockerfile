FROM  eclipse-temurin:11
#se crea un directorio
RUN mkdir /opt/app
WORKDIR /opt/app

#se colocara la ruta del proyecto
ARG JAR_FILE=target/practica8-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar



CMD [ "java", "-jar", "/opt/app/japp.jar"]
ENTRYPOINT [ "java", "-jar","app.jar" ]

#Crear imagen
#sudo docker build -t backenduv:1.0 .


#crear docker
#sudo docker run --name backenduv -d backenduv:1.0
