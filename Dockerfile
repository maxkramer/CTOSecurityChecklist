FROM node:10-slim
RUN mkdir /build && cd /build && apt-get update -yqq && apt-get install -yqq --no-install-recommends python2.7 python-pip ca-certificates curl build-essential
ADD docs gulpfile.js package.json . /
RUN npm install
EXPOSE 3000:3000 3001:3001
ENTRYPOINT npm run serve
