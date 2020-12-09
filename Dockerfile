FROM gradle:jdk11 as builder

COPY --chown=gradle:gradle . /app
WORKDIR /app
RUN gradle build

EXPOSE 8090
WORKDIR /app

CMD java -jar build/libs/k8sample-1.0.jar
