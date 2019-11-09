# Specify a base image
# https://hub.docker.com/_/node
FROM node:alpine

WORKDIR /usr/app

# Install some dependencies
# separate the copy section, speed up when rebuild docker image
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]
