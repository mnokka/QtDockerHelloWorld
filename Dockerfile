# Base image with Ubuntu
FROM ubuntu:22.04

# Set environment variables for debconf to avoid interactive mode
# Install tzdata directly to avoid questions
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    qtbase5-dev \
    qtchooser \
    qt5-qmake \
    qttools5-dev-tools \
    tzdata \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app/src

# Default command to keep the container alive
CMD ["/bin/bash"]

