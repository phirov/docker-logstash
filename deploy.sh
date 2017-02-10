#!/bin/sh

IMAGE_NAME='phirov/logstash'
: ${IMAGE_VERSION:='5-patch'}
echo "
    docker rmi ${IMAGE_NAME} ${IMAGE_NAME}:${IMAGE_VERSION}
"
docker rmi ${IMAGE_NAME} ${IMAGE_NAME}:${IMAGE_VERSION}
echo "
    docker build -t ${IMAGE_NAME} -t ${IMAGE_NAME}:${IMAGE_VERSION} .
"
docker build -t ${IMAGE_NAME} -t ${IMAGE_NAME}:${IMAGE_VERSION} .