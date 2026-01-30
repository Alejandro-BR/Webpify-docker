FROM node:22-alpine3.23

RUN apk add --no-cache \
  libc6-compat \
  vips \
  vips-dev

RUN npm install -g webpify-cli@latest

WORKDIR /work

ENTRYPOINT ["webpify"]
