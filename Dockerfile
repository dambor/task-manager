# Use Node.js LTS (Long Term Support) as base image
FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# Copy package.json and package-lock.json first for better caching
COPY package*.json ./
RUN npm install --production

# Copy app source code
COPY . .

# Create a directory for static files
#RUN mkdir -p public
#COPY index.html public/

# Expose the port the app runs on
EXPOSE 3000

# Define health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:3000/health || exit 1

# Command to run the app
CMD ["npm", "start"]
