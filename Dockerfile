FROM node:16-alpine3.11

# Create app directory

WORKDIR /app

# Install app dependencies
COPY package.json ./

RUN npm install

# Bundle app source

COPY . .

# Build app
RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]
