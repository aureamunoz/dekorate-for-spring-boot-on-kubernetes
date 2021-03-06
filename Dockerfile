####
# This Dockerfile is used in order to build a container that runs the Spring Boot application
#
# Build the image with:
#

# docker build -f Dockerfile -t amunozhe/demo:0.0.1-SNAPSHOT .

#
# Then run the container using:
#
# docker run -i --rm -p 8080:8080 amunozhe/demo:0.0.1-SNAPSHOT
FROM adoptopenjdk/openjdk11:alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080

ENTRYPOINT ["java","-jar","/app.jar"]

