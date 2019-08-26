#!/bin/bash -e

echo "hello"
docker login -u zhaoqin -p $PASSWORD
docker build -t zhaoqin/fluentd:latest .
docker push zhaoqin/fluentd:latest
docker logout
