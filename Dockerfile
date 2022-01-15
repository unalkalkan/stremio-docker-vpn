FROM node:14.15.0-alpine

WORKDIR /stremio

ARG VERSION=4.4.142

RUN apk add --no-cache wget ffmpeg
ADD server.js .
ADD stremio.asar .

VOLUME ["/root/.stremio-server"]

EXPOSE 11470

ENTRYPOINT [ "node", "server.js" ]