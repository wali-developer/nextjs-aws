FROM node:20-alpine3.18 AS builder

WORKDIR /app
COPY package*.json ./
RUN  npm install
COPY . .
RUN npm run build

EXPOSE 3000
CMD ["npm","run", "start"]  # Start the Next.js server in production mode
