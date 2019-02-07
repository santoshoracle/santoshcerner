FROM node:8

RUN apt-get update && apt-get install -y build-essential && apt-get install -y python
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . /usr/src/app
CMD ["npm", "start"]