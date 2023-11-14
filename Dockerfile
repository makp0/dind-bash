# Use a base image that includes Docker CLI and Git
FROM docker:24.0.7-git

# Update and install Bash
RUN apk update && \
    apk upgrade && \
    apk add bash && \
    apk add curl && \
    # Cleanup
    rm -rf /var/cache/apk/*
