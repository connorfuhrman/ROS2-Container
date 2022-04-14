FROM osrf/ros:galactic-desktop

COPY pkg_manifest /tmp/pkg_manifest
COPY dot_screenrc /.screenrc
COPY dot_profile /root/.profile

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y $(cat /tmp/pkg_manifest) && \
    rm /tmp/pkg_manifest


RUN echo 'source /root/.profile' >> /root/.bashrc
