FROM node:12.18.1

ENV NODE_ENV=production

# This tells Docker to use this path as the default location
WORKDIR /app

# files to be copy into our working directory /app
COPY ["package.json","package-lock.json","./"]
RUN npm install --production

COPY . .

# Telling docer what command we want to run when our image is run inside a container
CMD ["node","app.js"]
