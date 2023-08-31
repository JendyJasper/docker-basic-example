FROM node:20-alpine

# Copy package.json, wildcard used so both package.json AND package-lock.json are copied
# slash '/' at the end of app is important, so it created an app directory, otherwise you'll get an error
COPY package*.json /app/

# Copy app files from src directory
COPY src /app/

# Create app directory & set default dir so that next commands executes in /app dir, like cd-ing into /app to execute npm install
WORKDIR /app

RUN npm install

CMD ["node", "server.js"]