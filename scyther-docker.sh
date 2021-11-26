#!/bin/bash

# allow access from localhost
xhost + 127.0.0.1

# run firefox with X11 forwarding and keep running until it quits
docker run -e DISPLAY=host.docker.internal:0 -it --rm scyther:latest
