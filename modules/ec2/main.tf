variable "security_group_id" {
  description = "ID of the security group to associate with the EC2 instance"
  type        = string
}

resource "aws_instance" "web" {
  ami           = "ami-02a68b9f1f62152f5"  # Replace with a suitable AMI ID for your region
  instance_type = "t2.micro"
  key_name      = "example-keypair"  # Replace with your actual key pair name
  vpc_security_group_ids = [var.security_group_id]

  user_data = file("${path.module}/apache_userdata.sh")

  tags = {
    Name = "apache-web-server"
  }
}

output "instance_id" {
  value = aws_instance.web.id
}

output "public_ip" {
  value = aws_instance.web.public_ip
}
 
