FROM node:16 as build
WORKDIR /app
COPY src/package*.json ./
RUN npm install
COPY src/ .
EXPOSE 8080
CMD [ "node", "server.js" ]