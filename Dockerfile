# Start your image with a node base image
FROM node:18-alpine

# The /app directory should act as the main application directory
WORKDIR /app
ENTRYPOINT ["/bin/sh", "-c", "yarn run preview"]

# Copy the app package and package-lock.json file
COPY package*.json ./
COPY tsconfig*.json ./
# Copy local directories to the current local directory of our docker image (/app)
COPY *.html ./
COPY ./src ./src
COPY ./public ./public

RUN --mount=type=bind,source=package.json,target=package.json \
    --mount=type=bind,source=yarn.lock,target=yarn.lock \
    --mount=type=cache,target=/root/.yarn \
    rm -fr node_modules \
    && yarn install --frozen-lockfile --dev

EXPOSE 4173

# Build project
RUN yarn run build
