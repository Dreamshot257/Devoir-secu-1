#!/bin/bash

docker build -t faille_safety .
docker run --rm faille_safety

mv Dockerfile Dockerfile-safe
mv Dockerfile-unsafe Dockerfile

docker build -t faille_safety .
docker run --rm faille_safety

mv Dockerfile Dockerfile-unsafe
mv Dockerfile-safe Dockerfile
