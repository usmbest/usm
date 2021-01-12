#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-citypay/usmd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/usmd docker/bin/
cp $BUILD_DIR/src/usm-cli docker/bin/
cp $BUILD_DIR/src/usm-tx docker/bin/
strip docker/bin/usmd
strip docker/bin/usm-cli
strip docker/bin/usm-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
