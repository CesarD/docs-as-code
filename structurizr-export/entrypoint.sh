#!/bin/sh
outputPath=./output

node export-diagrams.js ${STRUCTURIZR_LITE} ${IMAGE_FORMAT}

mv -f *.${IMAGE_FORMAT} ${outputPath}