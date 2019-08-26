#!/bin/bash -e

TAG=$(git describe --tags --abbrev=0)
docker login -u zhaoqin -p $PASSWORD
echo "Building zhaoqin/fluentd:$TAG"
docker build -t zhaoqin/fluentd:latest .
echo "Publishing zhaoqin/fluentd:$TAG"
docker push zhaoqin/fluentd:latest
docker logout
