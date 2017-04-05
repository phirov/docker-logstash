# docker-logstash

This is a patched version of [logstash-input-s3 v3.1.1](https://github.com/logstash-plugins/logstash-input-s3).

The patched source is [here](https://github.com/phirov/logstash-input-s3).

In this fork release, I have added each object's key as field "filename" to each event.

This image is based on docker official image [logstash v5.1.1](https://hub.docker.com/_/logstash/)

This image is publish to [here](https://hub.docker.com/r/phirov/docker-logstash/) at docker hub


# History

## v5-m9

安装 python-pip 包

## v5-m8

安装 supervisor 服务

## v5-m6

修复安装 filter-environment 时 Gemfile 中的bug

## v5-m5

安装 cron 服务

## v5-p4

社区版 filter-environment

## v5-p3

社区版 output-mongodb

## v5-p2

定制版 input-s3
