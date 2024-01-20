terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Pulls the image
resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}

# Create a container
resource "docker_container" "virtual_machine_ubuntu" {
  image = docker_image.ubuntu.name
  name  = "virtual_machine_ubuntu"

   # Use tail -f to keep the container running
  command = ["tail", "-f", "/dev/null"]

  # Security Group can't be used in this case since it's docker. So it has to be external
    # labels = {
    #     label = "ssh"
    #     value = "ssh"
    # }

  # Expose port for ssh
  ports {
    internal = 22
    external = 22
  }
}

## Networking
# Virtual_Network => This is impossible to do since I'm using docker and if want to handle network, it has to be done using docker demon
# resource "docker_network" "virtual_network" {
#   name = "virtual_network"
#   ipam_config {
#     subnet = [var.virtual_network_cidr]
#   }
# }

## Public IP
resource "docker_container" "public_ip" {
    image = "alpine:latest"
    name = "public_ip"
    
    # Use tail -f to keep the container running
    command = ["tail", "-f", "/dev/null"]
    # Expose port for ssh
    ports {
        internal = 22
        external = 2222
    }
}


## Security Group for the Public IP container
resource "docker_container" "public_ip_security_group" {
    image = "alpine:latest"
    name = "public_api_security_group"

    # Use tail -f to keep the container running
    command = ["tail", "-f", "/dev/null"]
    # Security Group can't be used in this case since it's docker. So it has to be external
    # labels = {
    #     label = "ssh"
    #     value = "ssh"
    # }

    # Allow inbound ssh traffic
    ports {
        internal = 22
        external = 0
    }
}