# Use the official Node.js image as the base image
FROM node:alpine


# Set the working directory inside the container
WORKDIR /app


# Copy the package.json and package-lock.json files to the working directory
# COPY package*.json ./

# Copy the application code to the working directory
COPY . .

# Install dependencies
RUN yarn install



# Expose the port on which the application will run
EXPOSE 4000

# Start the application
CMD [ "npm", "start"  ]
 