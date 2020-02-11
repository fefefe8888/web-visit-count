FROM alpine:3.10.3

RUN apk update
RUN apk upgrade
RUN apk add nodejs
RUN apk add npm

WORKDIR '/app'

COPY package.json .
RUN npm install
COPY index.js .

CMD ["npm", "start"]
