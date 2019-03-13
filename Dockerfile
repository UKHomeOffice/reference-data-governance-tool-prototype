FROM node:10-alpine

ENV USERMAP_UID 1000

RUN apk update && apk upgrade

RUN mkdir -p /src
WORKDIR /src

COPY package.json .
RUN npm install
COPY . .
RUN touch .env

RUN chown -R 1000 /src/public
RUN chown -R 1000 /src/lib

EXPOSE 3000

USER ${USERMAP_UID}

CMD ["npm","start"]
