FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

# Clear npm cache
RUN npm cache clean --force

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
