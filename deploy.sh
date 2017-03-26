#!/bin/sh

IMAGE_NAME='phirov/docker-logstash'
: ${IMAGE_VERSION:='5-m5'}

echo "
    docker rmi ${IMAGE_NAME} ${IMAGE_NAME}:${IMAGE_VERSION}
"
docker rmi ${IMAGE_NAME} ${IMAGE_NAME}:${IMAGE_VERSION}

echo "
    docker build -t ${IMAGE_NAME} -t ${IMAGE_NAME}:${IMAGE_VERSION} .
"
docker build -t ${IMAGE_NAME} -t ${IMAGE_NAME}:${IMAGE_VERSION} .
