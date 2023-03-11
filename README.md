<!-- ABOUT THE PROJECT -->
## About The Project

Basic Hello World build with Node/Express and Dockerized to deploy to Cloud Run

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/pbhadha/cloud-run-node-express-test.git
   ```
2. Install NPM packages
   ```sh
   npm install
   ```
3. Make sure you have typescript installed, otherwise run
   ```sh
   npm install -g typescript
   ```
3. Run the Typescript Compiler (will transpile the TS into JS)
   ```sh
   npm run tsc
   ```
3. Run the project locally to make sure it work, before building a Docker image
   ```sh
   npm run start
   ```
3. Open the website in a browser and see output "Hello World!"
   ```sh
   http://localhost:7000
   ```
4. Tag and build docker image
   ```sh
   docker build -t cloud-run-node-express-test . 
   ```
5. Validate that the docker image was build and tagged properly
   ```sh
   docker images 
   ```
5. Spin up a contianer with the freshly created Docker image
   _-p argument maps 8080 (port on host machine) to 7000 (listening port mapped in the container)_
   ```sh
   docker run -p 8080:7000 cloud-run-node-express-test
   ```
3. Open the website in a browser and see output "Hello World!"
   ```sh
   http://localhost:8080
   ```