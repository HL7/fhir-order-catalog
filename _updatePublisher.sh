#!/bin/bash
mkdir -p input-cache
cd input-cache
echo "Downloading most recent publisher - it's ~100 MB, so this may take a bit"
curl -o org.hl7.fhir.publisher.jar https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar
cd ..
echo "Done"