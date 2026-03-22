FROM node:20-alpine

RUN apk add --no-cache git

WORKDIR /mam
RUN mkdir -p /mam/bog/GPTHub
COPY . /mam/bog/GPTHub

RUN npm exec mam /bog/GPTHub

EXPOSE 9080

# http://localhost:9080/bog/GPTHub/app/-/test.html
