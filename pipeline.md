# NodeJS:

```ps
npm init -y

npm install express
```

`server.js`

```js
// Import the Express module
const express = require("express");

// Create an Express application
const app = express();

// Define a port to listen on
const PORT = 3000;

// Define a route for the root URL ("/")
app.get("/", (req, res) => {
  res.send("Hello, World!");
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
```

`.gitignore`

```
node_modules
```

`Dockerfile`

```docker
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
```

# ngrok

```ps
ngrok http 8080
```

# Jenkins

`Build steps:`

```
docker build -t pipeline .

docker stop pipeline || true

docker rm pipeline || true

docker run -d -p 3000:3000 --name pipeline pipeline
```
