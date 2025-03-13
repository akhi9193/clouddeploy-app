# Use official Node.js image as base
FROM node:18-alpine  

# Set the working directory inside the container
WORKDIR /app  

# Copy package.json and install dependencies
COPY package.json .  
RUN npm install  

# Copy the rest of the application
COPY . .  

# Expose port 3000
EXPOSE 3000  

# Start the app
CMD ["node", "index.js"]
