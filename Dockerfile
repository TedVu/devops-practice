FROM node:12

WORKDIR /app

# ./ means current working dir
COPY package*.json ./

RUN npm install 

COPY . .

ENV PORT=8080

# expose the port of the running container
EXPOSE 8080 

# different between cmd and run ? 
CMD ["npm", "start"]
