###
# Author: Justin Quijano
# Class: SYST35144 Cloud Systems
# Lab 3 - Terraform
###

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.57.1"
    }
  }
}

terraform {
  cloud {
    organization = "Hydrohomie-training"
    workspaces {
      name = "SDN-Lab3-Terraform-Project" 
    }
  }
}

provider "aws" {
  # profile = "default"
  region                   = "us-east-1"
  shared_credentials_files = ["/Users/Owner/.aws/credentials"]
}
