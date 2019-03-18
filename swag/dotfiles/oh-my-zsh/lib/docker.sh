#!/bin/bash

docker rm chrome

docker run -it \
    --name chrome \
    jess/chrome