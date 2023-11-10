# Official Node runtime as parent image:
FROM node:14
# Working Directory
WORKDIR /src/app
# Copy package.json and package-lock.json
COPY package*.json ./
# Install packages for json
RUN npm install
# Copy sorce inside the Docker image
COPY . .
# Make port 5000 available
EXPOSE 5000
# Define environment variable
ENV NAME World
# Run index.js when the container launches
CMD ["node", "index.js"]
