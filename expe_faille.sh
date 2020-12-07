#!/bin/bash

# On build puis lance le container sans la faille
docker build -t faille_safety .
docker run --rm faille_safety

# On change le dockerfile
mv Dockerfile Dockerfile-safe
mv Dockerfile-unsafe Dockerfile

# On build puis lance le container avec la faille
docker build -t faille_safety .
docker run --rm faille_safety

# On remet le Dockerfile par defaut
mv Dockerfile Dockerfile-unsafe
mv Dockerfile-safe Dockerfile
