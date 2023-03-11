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
4. Run the Typescript Compiler (will transpile the TS into JS)
   ```sh
   npm run tsc
   ```
5. Run the project locally to make sure it work, before building a Docker image
   ```sh
   npm run start
   ```
6. Open the website in a browser and see output "Hello World!"
   ```sh
   http://localhost:7000
   ```
7. Tag and build docker image
   ```sh
   docker build -t cloud-run-node-express-test . 
   ```
8. Validate that the docker image was build and tagged properly
   ```sh
   docker images 
   ```
9. Spin up a contianer with the freshly created Docker image
   _-p argument maps 8080 (port on host machine) to 7000 (listening port mapped in the container)_
   ```sh
   docker run -p 8080:7000 cloud-run-node-express-test
   ```
10. Open the website in a browser and see output "Hello World!"
   ```sh
   http://localhost:8080
   ```
11. Tear down the running container
   _You will have to run tis command in a new terminal window_
   ```sh
   docker ps
   ```
12. Using the "container-id" of the cloud-run-node-express-test from the above list, run the stop command
   ```sh
   docker stop <container-id>
   ```
12. This will delete the image we created.
    _-f will force the removal of the image if it is still being referenced_
   ```sh
   docker image rm -f cloud-run-node-express-test
   ```