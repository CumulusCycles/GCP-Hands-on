# Use official Node.js LTS image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the app
COPY server.js ./

# Expose port 8080
EXPOSE 8080
# Start the app
CMD ["npm", "start"]
