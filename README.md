# Terraform EC2 Apache Project

This project uses Terraform to create an EC2 instance on AWS with Apache2 installed using a User Data script. It also sets up a security group to allow HTTP access to the instance.

## Project Structure

- **modules/**: Contains reusable Terraform modules for EC2 and security group.
- **main.tf**: Main Terraform configuration that integrates the modules to provision resources.
- **apache_userdata.sh**: User Data script to install and start Apache on the EC2 instance.
- **README.md**: Project documentation.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS credentials configured

## Usage

1. Initialize Terraform:
   terraform init
2. Apply the configuration to create resources:
   terraform apply
3. To delete resources, use:
   terraform destroy 
