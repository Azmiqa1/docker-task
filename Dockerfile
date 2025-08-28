Dockerfile for Node.js
FROM node:24
WORKDIR /app
COPY . .
ENV NODE_ENV=staging
ENV PORT=8080
EXPOSE 8080
CMD ["sh", "-c", "npm start"]
