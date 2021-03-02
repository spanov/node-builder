FROM node:lts-alpine as builder

MAINTAINER Sergey Panov <https://github.com/spanov>

RUN apk --no-cache add g++ gcc libgcc libstdc++ linux-headers make python
RUN npm install --quiet node-gyp -g

RUN npm ci
