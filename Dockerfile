# Use a base image that includes bash (e.g., Debian)
FROM  docker:24.0.7-git

# Install Docker CLI and other necessary tools
RUN apt-get update && \
    apt-get install -y \
    bash
