# Specify environment
FROM node:9-slim 

# Specify working directory in docker 
WORKDIR /server

# copy from local to docker workspace
COPY package.json /server

# run application there
RUN npm install

# copy everything code file there
COPY . /server

# run the command
CMD ["npm", "start"]