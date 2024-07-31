# Use a base image with Bash and bc installed
FROM alpine:latest

# Install `bc` and `bash` (for compatibility) in the image
RUN apk update && apk add --no-cache bc bash

# Set the working directory
WORKDIR /usr/src/app

# Copy the shell script into the container
COPY multiply.sh .

# Make the script executable
RUN chmod +x multiply.sh

# Set the default command to run the script
ENTRYPOINT ["./multiply.sh"]
