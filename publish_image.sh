#!/bin/bash -e

echo "my name is $NAME"

TAG=$(git describe --tags --abbrev=0)
docker login -u zhaoqin -p $PASSWORD
echo "Building zhaoqin/fluentd:$TAG"
docker build -t zhaoqin/fluentd:$TAG .
echo "Publishing zhaoqin/fluentd:$TAG"
docker push zhaoqin/fluentd:$TAG
docker logout
