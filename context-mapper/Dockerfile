FROM eclipse-temurin:21.0.6_7-jdk-alpine-3.21

RUN apk -i update && \
    apk add --no-cache wget unzip graphviz && \
    mkdir -p /usr/local/context-mapper-cli && \
    wget https://repo1.maven.org/maven2/org/contextmapper/context-mapper-cli/6.12.0/context-mapper-cli-6.12.0.zip -O /tmp/context-mapper-cli.zip && \
    unzip /tmp/context-mapper-cli.zip -d /tmp && \
    mv /tmp/context-mapper-cli-6.12.0/* /usr/local/context-mapper-cli && \
    rm -rf /tmp/context-mapper* && \
    mkdir -p /usr/local/context-mapper

WORKDIR /usr/local/context-mapper

ENTRYPOINT ["/usr/local/context-mapper-cli/bin/cm"]