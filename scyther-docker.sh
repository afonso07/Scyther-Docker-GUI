#!/bin/bash

# allow access from localhost
xhost + 127.0.0.1

# run firefox with X11 forwarding and keep running until it quits
docker run -d -e DISPLAY=host.docker.internal:0 -it --rm --mount type=bind,source="$(pwd)"/scyther-files,target=/scyther-files scyther-linux:latest
