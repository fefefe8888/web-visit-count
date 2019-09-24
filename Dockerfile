FROM alpine

RUN apk upgrade
RUN apk update
RUN apk add nodejs
RUN apk add npm

WORKDIR '/app'

COPY package.json .
RUN npm install
COPY index.js .

CMD ["npm", "start"]
