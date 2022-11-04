# Get based image based on node with alpine tag
FROM node:alpine

# Create working directory environment variable
ENV APP=/home/app

# Directory where code lives
WORKDIR $APP

# Copy package.json to working directory - sppedup subsequent builds after initial build
COPY ./package.json ./

# Run node specific command
RUN npm install

# Copy all files to working directory
COPY ./ ./

# Specify default commands after running container
CMD ["npm", "start"]