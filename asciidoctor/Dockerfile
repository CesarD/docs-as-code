FROM asciidoctor/docker-asciidoctor:latest

RUN apk -i update && \
    apk -i add wget unzip graphviz && \
    wget https://github.com/structurizr/cli/releases/download/v2024.12.07/structurizr-cli.zip -O /opt/structurizr-cli.zip && \
    unzip /opt/structurizr-cli.zip -d /opt/structurizr-cli && \
    rm /opt/structurizr-cli.zip && \
    ln -s /opt/structurizr-cli/structurizr.sh /usr/local/bin/structurizr

ENV DIAGRAM_STRUCTURIZRCLI_HOME=/opt/structurizr-cli