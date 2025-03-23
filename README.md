This is an experimentation repository for playing around with the Docs-As-Code approach for generating systems documentation.
Below there are some commands to perform some tasks over the content included here.


Build ContextMapper image:

```
docker build context-mapper -t context-mapper
```

Run it:

```
docker run --rm -v $PWD/src/docs/arc42/cml:/usr/local/context-mapper context-mapper <args>

docker run --rm -v $PWD/src/docs/arc42/cml:/usr/local/context-mapper context-mapper generate -i contextmapper.cml -g plantuml -o generated-diagrams
```

Run Structurizr Lite:

```
docker compose up structurizr-lite
```

Run Structurizr CLI (export views)

```
docker run -it --rm -v $PWD/src/docs/arc42/dsl:/usr/local/structurizr structurizr/cli export -w workspace.dsl -f plantuml -o generated-diagrams
```

Run Structurizr Export (Puppeteer automation for exporting views via Structurizr-Lite)

```
docker compose run --rm structurizr-export
```

Create AsciiDoctor w/Structurizr-CLI image:

```
docker build asciidoctor -t asciidoctor
```

Run AsciiDoctor to generate site with Structurizr diagrams:

```
docker run --rm -it -v $PWD:/documents/ asciidoctor

asciidoctor -r asciidoctor-diagram src/docs/arc42/arc42.adoc -D output/docs
```

Create docToolchain w/Structurizr-CLI image:

```
docker build doctoolchain -t dtc:v3.4.1
```

Calling docToolchain with custom image:

```
./dtcw docker image dtc tasks

./dtcw docker image dtc generateHTML
```

