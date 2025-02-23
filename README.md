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

Create docToolchain w/Structurizr-CLI image:

```
docker build doctoolchain -t dtc:v3.4.1
```

Calling docToolchain with custom image:

```
./dtcw docker image dtc tasks

./dtcw docker image dtc generateHTML
```

