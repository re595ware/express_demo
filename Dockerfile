FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies (use package-lock.json if available)
COPY package*.json ./
RUN npm ci --only=production

# Bundle app source
COPY . .

# Expose the app port and set default PORT
EXPOSE 3000
ENV PORT=3000

# Start the app
CMD ["node", "server.js"]
