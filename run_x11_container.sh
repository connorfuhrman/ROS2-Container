#!/bin/bash


# Small helper script to launch the Docker container with X11 for GUI applications.
# Script is mainly intended for use on MacOS
#    from https://medium.com/@mreichelt/how-to-show-x11-windows-within-docker-on-mac-50759f4b65cb


xhost + 127.0.0.1 > /dev/null

docker run --rm -it \
       -e DISPLAY=host.docker.internal:0 \
       connorfuhrman/ros:galactic
