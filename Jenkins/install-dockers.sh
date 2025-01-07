#!/bin/bash

# Update system
echo "Updating system..."
sudo apt-get update -y
sudo apt-get upgrade -y

# Install required dependencies
echo "Installing required dependencies..."
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s official GPG key
echo "Adding Docker GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/trusted.gpg.d/docker.asc > /dev/null

# Set up Docker stable repository
echo "Setting up Docker repository..."
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update package index again
echo "Updating package index..."
sudo apt-get update -y

# Install Docker
echo "Installing Docker..."
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Start Docker service
echo "Starting Docker service..."
sudo systemctl start docker

# Enable Docker service to start on boot
echo "Enabling Docker to start on boot..."
sudo systemctl enable docker

# Verify Docker installation
echo "Verifying Docker installation..."
sudo docker --version

# Test Docker by running hello-world container
echo "Running hello-world container to test Docker..."
sudo docker run hello-world

echo "Docker installation complete."

#Grant access to jenkins|Ubuntu user
sudo su - # switch to root user
usermod -aG docker jenkins
usermod -aG docker ubuntu
systemctl restart docker