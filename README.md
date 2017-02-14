# docker-logstash

This is a patched version of [logstash-input-s3 v3.1.1](https://github.com/logstash-plugins/logstash-input-s3).

The patched source is [here](https://github.com/phirov/logstash-input-s3).

In this fork release, I have added each object's key as field "filename" to each event.

This image is based on docker official image [logstash v5.1.1](https://hub.docker.com/_/logstash/)

This image is publish to [here](https://hub.docker.com/r/phirov/docker-logstash/) at docker hub
