# Fetching the latest node image on alpine linux
FROM node:alpine

WORKDIR /to-do-app

# Installing dependencies
COPY ./package.json /to-do-app
RUN yarn install

# Copying all the files in our project
COPY . .

# Starting our application
CMD export NODE_OPTIONS=--openssl-legacy-provider && yarn start
