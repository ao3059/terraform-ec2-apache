provider "aws" {
  region = "ca-central-1"  # Replace with your desired AWS region
}

module "security_group" {
  source = "./modules/security_group"
}

module "ec2_instance" {
  source           = "./modules/ec2"
  security_group_id = module.security_group.security_group_id
}

output "ec2_instance_public_ip" {
  value = module.ec2_instance.public_ip
}
 
