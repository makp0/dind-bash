# Use a base image that includes bash (e.g., Debian)
FROM debian:buster

# Install Docker CLI and other necessary tools
RUN apt-get update && \
    apt-get install -y \
    curl \
    git \
    bash && \
    curl -fsSL https://get.docker.com -o get-docker.sh && \
    sh get-docker.sh && \
    # Cleanup
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* get-docker.sh
