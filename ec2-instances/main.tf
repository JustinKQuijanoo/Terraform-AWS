###
# Author: Justin Quijano
# Class: SYST35144 Cloud Systems
# Lab 3 - Terraform
###

# Deploy a public EC2 instance
resource "aws_instance" "EC2-Public" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = var.public_subnet_id
  key_name        = "KeyS144"
  security_groups = [var.security_group_id]
  user_data       = file("./ec2-instances/user-data.sh")
  tags            = { Name = "EC2-Public-Hydrohomie" }
}

# Deploy a private EC2 instance 
resource "aws_instance" "EC2-Private" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = var.private_subnet_id
  key_name        = "KeyS144"
  security_groups = [var.security_group_id]
  user_data       = file("./ec2-instances/user-data.sh")
  tags            = { Name = "EC2-Private-Hydrohomie" }
}
