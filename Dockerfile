# Use the official Node.js image as the base image
FROM node

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Expose the port that your NestJS app is running on
EXPOSE 3000

# Start the application
CMD ["npm", "run", "start:prod"]