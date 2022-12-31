FROM node:17.1.0

WORKDIR /app/storefront

COPY package.json .
COPY yarn.* .

RUN rm -rf node_modules

RUN apt-get update

RUN npm install -g npm@8.1.2

RUN npm install sharp

RUN npm install

COPY . .

CMD [ "npm", "run", "dev"]