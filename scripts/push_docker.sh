#!/usr/bin/env bash

set -e

if [ "$CIRRUS_BRANCH" != "master" ]
then
    exit 0
fi

docker login --username $DOCKER_USER_NAME --password $DOCKER_PASSWORD

docker push hiyori8/android-sdk:tools
docker push hiyori8/android-sdk:33
docker push hiyori8/android-sdk:33-ndk
