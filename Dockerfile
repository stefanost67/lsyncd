FROM alpine:latest
LABEL maintainer="staliostefano@gmail.com"

RUN apk update && \
    apk upgrade && \
    apk add --no-cache lsyncd openssh-client && \
    mkdir /root/.ssh && \ 
    mkdir /data

CMD lsyncd -insist -nodaemon /etc/lsyncd/lsyncd.conf.lua
