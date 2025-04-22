FROM apache/beam_java17_sdk:latest
RUN apt-get update \
    && apt-get install maven -y
WORKDIR app
COPY . /app
RUN mvn clean install
ENTRYPOINT ["java", "-jar"]
CMD ["target/gcp-pubsub-0.0.1-SNAPSHOT.jar"]