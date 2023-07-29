FROM node:14

# Create app directory
WORKDIR /app

COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8081

CMD [ "node", "server.js" ]