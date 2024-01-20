output "public_ip_address" {
  value = docker_container.public_ip.ports[0].external
}

output "virtual_machine_connection_details" {
    value = {
        public_ip = docker_container.public_ip.ports[0].external,
        ssh_port = docker_container.public_ip.ports[0].external,
        container_name = docker_container.virtual_machine_ubuntu.name,
    }
}
