FROM mcr.microsoft.com/dotnet/sdk:7.0-jammy

# Install required packages
RUN apt-get update && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common git bash

# Add the deadsnakes PPA for newer Python versions
RUN add-apt-repository ppa:deadsnakes/ppa

# Install Python 3.11
RUN apt-get update && \
    apt-get install -y python3.11 python3-pip

# Install Docker using the official Docker convenience script
RUN curl -fsSL https://get.docker.com -o get-docker.sh && \
    sh get-docker.sh

# Cleanup
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
