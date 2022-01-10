FROM alpine:3.11.3

RUN apk update
#RUN apk upgrade
RUN apk add nodejs
RUN apk add npm

WORKDIR '/app'

COPY package.json .
RUN npm install
COPY index.js .

ENTRYPOINT ["npm", "start"]
