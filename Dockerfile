# Container image that runs your code
FROM alpine:3.10

# Install nodejs and npm
RUN apk add --update nodejs npm

# Install write-good
RUN npm install -g write-good

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
