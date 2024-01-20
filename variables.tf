variable "instance_size" {
  default     = "t2.micro"
  description = "Size of the instance of the virtual machine"
}

variable "virtual_network_cidr" {
  default     = "172.22.0.0/16"
  description = "CIDR block for the virtual network"
}
