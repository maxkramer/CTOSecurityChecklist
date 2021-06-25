FROM node:10-slim
RUN mkdir /build && cd /build && apt-get update && apt-get install -y python2.7 python-pip ca-certificates curl
RUN which python2 && which python2
COPY . .
RUN npm install && npm run serve
EXPOSE 3000
