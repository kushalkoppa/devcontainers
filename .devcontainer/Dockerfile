FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Install prerequisites
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        cmake \
        ninja-build \
        python3 \
        python3-pip \
        openjdk-17-jre-headless \
        unzip \
        libxtst6 \
        libxi6 \
        git \
        gdb \
        clang-format \
        curl && \
    rm -rf /var/lib/apt/lists/*

# Create directories for optional proprietary installers or licenses
RUN mkdir -p /opt/dspace /licenses

# Configure non-root user for hardware access if needed
ARG USERNAME=vscode
RUN usermod -aG dialout,plugdev ${USERNAME}

ENV DS_SYSTEMDESK_HOME=/opt/dspace/systemdesk \
    DS_LICENSE_FILE=/licenses/license.dat

# Default workdir
WORKDIR /workspace

