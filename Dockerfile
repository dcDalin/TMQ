# build stage
FROM node:9.3.0-alpine
WORKDIR /app
COPY package.json /app
COPY package-lock.json /app
COPY index.js /app
RUN npm install
COPY ./ app
CMD node index.js
EXPOSE 8082