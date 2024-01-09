# Use the official Node.js image as a parent image
FROM node:20.10.0

# Install pnpm
RUN npm install -g pnpm@8.12.0

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the project files into the container
COPY . .

# Install any dependencies
RUN pnpm install

# Expose port 3000
EXPOSE 3000

# Define the command to run the app
CMD [ "pnpm", "dev" ]