# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json (if available) to the working directory
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Bundle app source inside Docker image
COPY . .

# Make port  80 available to the world outside this container
EXPOSE  80

# Define the command to run your app using CMD which defines your runtime
CMD [ "node", "emoji-translate.js" ]
