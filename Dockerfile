# Base
FROM node:12

# Name working directory
WORKDIR /app

# Install dependencies 
COPY package*.json ./
RUN npm install

# Build
COPY . .
RUN npm run build

# Application
USER node
ENV PORT=8080
EXPOSE 8080

CMD ["node", "dist/main.js"]