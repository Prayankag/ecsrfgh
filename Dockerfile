# Use the official Node.js image from Docker Hub
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the index.html to the container (just like with NGINX)
COPY index.html /app/index.html

# Expose the port your app will run on
EXPOSE 3000

# Command to run your application (serve the index.html with Node.js)
CMD ["node", "app.js"]
