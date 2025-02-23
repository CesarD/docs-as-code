FROM asciidoctor/docker-asciidoctor:latest

RUN apk -i update && \
    apk -i add wget unzip graphviz && \
    wget https://github.com/structurizr/cli/releases/download/v2024.12.07/structurizr-cli.zip -O /usr/local/structurizr-cli.zip && \
    unzip /usr/local/structurizr-cli.zip -d /usr/local/structurizr-cli && \
    rm /usr/local/structurizr-cli.zip

ENV DIAGRAM_STRUCTURIZRCLI_HOME=/usr/local/structurizr-cli