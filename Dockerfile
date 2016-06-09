FROM alpine:latest

RUN apk update && apk add curl && \
    curl -f http://netassist.dl.sourceforge.net/project/nmon/nmon16f_power_mr_nmon.tar.gz -o nmon.tar.gz && \
    mkdir /nmon && mkdir /nmon/bin && \
    tar -xvf nmon.tar.gz -C /nmon && \
    rm nmon.tar.gz && \
    cp /nmon/nmon16f_power_ubuntu1404 /nmon/bin/nmon

VOLUME "/nmon"
