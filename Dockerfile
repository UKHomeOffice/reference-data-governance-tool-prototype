FROM quay.io/ukhomeofficedigital/cop-node:10-alpine-python2

ENV USERMAP_UID 1000

RUN apk update && apk upgrade &&  apk add --virtual build-dependencies build-base

RUN mkdir -p /src
WORKDIR /src

COPY package.json .
RUN npm install
COPY . .

RUN apk del build-dependencies && \
    touch .env && \
    chown -R 1000 /src/public && \
    chown -R 1000 /src/lib

EXPOSE 3000

USER ${USERMAP_UID}

CMD ["npm","start"]
