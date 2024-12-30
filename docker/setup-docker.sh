#! /bin/bash

# create docker buildx builder
docker buildx create --name gameshellsdk
docker buildx inspect gameshellsdk --bootstrap
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes

# build docker images
docker buildx build --platform linux/arm/v7 \
       --builder gameshellsdk \
       --output type=docker \
       -t qvxlabs/gameshellsdk/clockworkos:0.5 \
       ClockworkOS/0.5/

