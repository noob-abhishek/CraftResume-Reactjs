FROM node:latest
# Create app Directory
WORKDIR  /home/ubuntu/gpt/chat-gpt-clone

#Install app depenencies

COPY package*.json ./

#Copying package.json and package-lock.json (if its exists) from the local directory to the working directory.

RUN npm install
#Install the dependencies in your packge json.file

COPY . /home/ubuntu/gpt/chat-gpt-clone
#Copies the source code from your local directory to container working directory

EXPOSE 3000
#Indicates the application inside the container will listen on port 3000

CMD [ "npm","start"]
#Indicates the default command when the container is started from the image
