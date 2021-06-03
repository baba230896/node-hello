# Base image
FROM node:lts-alpine

# Work directory
WORKDIR /app

# Install dependencies
COPY package.json /app
RUN npm install

COPY . /app

USER node
EXPOSE 3000

CMD ["node", "index.js"]

