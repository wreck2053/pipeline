# Step 1: Use an official Node.js runtime as a base image
FROM node:14

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application code
COPY . .

# Step 6: Expose the application port (optional; default port 3000)
EXPOSE 3000

# Step 7: Define the command to run the app
CMD ["node", "server.js"]