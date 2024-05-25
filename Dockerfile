# Stage 1: Build dependencies
FROM node:latest AS builder

WORKDIR /app

COPY package.json .
COPY package-lock.json .
RUN npm install

# Stage 2: Production image
FROM node:latest

WORKDIR /app

COPY --from=builder /app .

CMD ["node", "app.js"]
