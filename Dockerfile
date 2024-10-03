# Use the official Ubuntu base image
FROM ubuntu:latest

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies, Neovim, PHP 8, and Node.js 20
RUN apt-get update && apt-get install -y \
    software-properties-common \
    curl \
    && add-apt-repository ppa:neovim-ppa/stable \
    && apt-get update \
    && apt-get install -y neovim \
    && apt-get install -y git \
    && add-apt-repository ppa:ondrej/php \
    && apt-get update \
    && apt-get install -y php8.0 php8.0-mbstring php8.0-xml php8.0-mysql \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root

# Copy the starter files into the container
## /root is ~ is home directory
COPY starter-files/ /root/

CMD ["/bin/bash"]

# In container run: nvim
