FROM node:20-alpine
WORKDIR /app
RUN apk add --no-cache unzip
COPY . .
RUN unzip -o "*.zip" && npm install
EXPOSE 3000
CMD ["node", "server/index.js"]
