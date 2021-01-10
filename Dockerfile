FROM openjdk:16-jdk-alpine3.12
RUN mkdir /gh
WORKDIR /gh
COPY config.yml ./
COPY graphhopper-map-matching-web-1.0.jar ./
ENTRYPOINT ["java", "-jar", "graphhopper-map-matching-web-1.0.jar", "server", "config.yml" ]