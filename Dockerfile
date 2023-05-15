# Use an official Node runtime as the parent image
FROM node:14

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the app dependencies inside the docker image
RUN npm install

# Copy the rest of your app's source code to the working directory
COPY . .

# Make port 8080 available to the outside world
EXPOSE 8080

# Define the command to run your app
CMD [ "node", "server.js" ]
