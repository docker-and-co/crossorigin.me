FROM node:lts

WORKDIR /usr/src/app

COPY package*.json ./
COPY yarn.lock ./

#RUN npm ci --only=production
RUN yarn install

COPY . .

EXPOSE 8080

CMD [ "node", "index.js" ]
