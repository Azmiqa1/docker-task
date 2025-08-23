Dockerfile for Node.js
FROM node:24
WORKDIR /app
COPY . .
ENV hdgdgs
ENV gsgsggs
EXPOSE 8080
CMD ["sh", "-c", "nmp run"]
