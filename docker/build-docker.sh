#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-privcypay/privcyd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/privcyd docker/bin/
cp $BUILD_DIR/src/privcy-cli docker/bin/
cp $BUILD_DIR/src/privcy-tx docker/bin/
strip docker/bin/privcyd
strip docker/bin/privcy-cli
strip docker/bin/privcy-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
