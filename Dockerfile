# Use the official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the entire project including node_modules
COPY . .

# Create database directory if it doesn't exist
RUN mkdir -p ./database

# Expose the default port (can be overridden with -p option)
EXPOSE 10345

# Set default environment variables
ENV NODE_ENV=production

# Run the application
CMD ["node", "app.js", "-t", "changeTheToken"]
