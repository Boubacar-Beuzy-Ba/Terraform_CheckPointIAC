## Checkpoint Objective
In your role at XYZ Company, you have been tasked with using Terraform to provision a simple infrastructure on a cloud provider. The objective is to gain hands-on experience with Terraform and familiarize yourself with the process of provisioning infrastructure. The infrastructure should include the following components:

- Virtual Machine: You need to provision a virtual machine instance.

- Networking: Configure a virtual network and subnet for the virtual machine to ensure proper network connectivity.

- Security Group: Set up a security group to control inbound and outbound traffic to the virtual machine, ensuring the appropriate level of security.

- Public IP: Allocate a public IP address for the virtual machine, enabling access to the vm using SSH.

### Instructions
1. Initialize your Terraform project and configure the cloud provider as the Terraform backend.

1. Create a Terraform configuration file (main.tf) and define the necessary resources to provision the virtual machine, virtual network, subnet, security group, and public IP.

1. Use input variables to make your Terraform configuration more flexible. Define variables for the instance size, virtual network CIDR block, and other relevant settings.

1. Utilize output values to capture important information, such as the public IP address or connection details, that may be useful for other components or future configurations.

1. Apply the Terraform configuration to provision the virtual machine and associated resources.

1. Test the deployed infrastructure by accessing the web server using SSH.

1. Experiment with different Terraform commands and scenarios, such as modifying the instance size, adding additional security rules, or provisioning multiple virtual machines.

1. Remember to follow best practices, such as organizing your Terraform files, leveraging reusable modules, and maintaining infrastructure as code.