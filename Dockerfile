FROM node:8-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm ci --only=production
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]