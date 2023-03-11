FROM node:18.13.0
#App directory
WORKDIR /app

#Copies the package file into the container
COPY package*.json ./
#NPM install will download and prep the dependancies
RUN npm install

#Rather than just copy the Transpiled JS files
#Do the transpilation in the container to ensure it's build for that env
#Rather than being compiled on the host that may or may not have the exact env
COPY . .

#Run the TypeScript Compiler
#See package.json for definition of the 'tsc' script
RUN npm run tsc

EXPOSE 7000

CMD ["npm", "start"]