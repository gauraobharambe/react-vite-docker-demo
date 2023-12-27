### Last Build Status:
[![Docker Image CI](https://github.com/gauraobharambe/react-vite-docker-demo/actions/workflows/docker-image.yml/badge.svg?branch=main)](https://github.com/gauraobharambe/react-vite-docker-demo/actions/workflows/docker-image.yml)

### Running the Project

To run this project locally, follow these steps:

1. **Development Mode:**
   ```bash
   yarn run dev
   ```
   This command starts the project in development mode using Vite.

2. **Building the Project:**
   ```bash
   yarn run build
   ```
   Use this command to build the project after making changes or before deployment. It compiles TypeScript files (`tsc`) and performs a Vite build.

3. **Linting:**
   ```bash
   yarn run lint
   ```
   This command runs ESLint to check for and report any linting errors in TypeScript and TypeScript React files.

4. **Preview:**
   ```bash
   yarn run preview
   ```
   Run this command to preview the project on a specified host (`0.0.0.0`). The host(`0.0.0.0`) is set to expose the app outside of Docker Container. This is useful for testing before deployment.

### Running with Docker

To run this project using Docker, follow these Docker-specific commands:

1. **Building Docker Image:**
   ```bash
   yarn run docker:build
   ```
   Use this command to build the Docker image for the React Vite project. It uses Docker Compose to set up the necessary configurations.

2. **Running Docker Container:**
   ```bash
   yarn run docker:run
   ```
   This command runs the Docker container for the React Vite project, mapping port `4173` of the container to port `4173` of the host.

3. **Starting Docker Container:**
   ```bash
   yarn run docker:start
   ```
   If the Docker container has been stopped, use this command to start the container named `react-vite-docker-demo`.

4. **Restarting Docker Container:**
   ```bash
   yarn run docker:restart
   ```
   Use this command to restart the Docker container named `react-vite-docker-demo`.

5. **Stopping Docker Container:**
   ```bash
   yarn run docker:stop
   ```
   This command stops the Docker container named `react-vite-docker-demo`.

### Note
- Ensure Docker is installed and running on your machine before executing Docker-specific commands.
- Adjust ports and container names as needed based on your project configurations.
- Feel free to contribute for any enhancements.
