# Specify environment
FROM node:9-slim 

# Specify working directory in docker 
WORKDIR /app

# copy from local to docker workspace
COPY package.json /app

# run application there
RUN npm install

# copy everything code file there
COPY . /app

# run the command
CMD ["npm", "start"]