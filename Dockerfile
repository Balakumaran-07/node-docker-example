FROM node:14-slim

WORKDIR /usr/src/app

COPY package.json ./

# Add the source code to app
COPY ./ /usr/local/app/

RUN npm install
#RUN npm ci --only=production

COPY . .
RUN npm run compile
CMD npm run start

