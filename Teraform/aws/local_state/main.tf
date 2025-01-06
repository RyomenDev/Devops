terraform {
  # Specifies required providers for the configuration
  required_providers {
    aws = {
      source  = "hashicorp/aws"  # Using the AWS provider from HashiCorp
      version = "~> 4.16"        # Allows versions compatible with 4.16
    }
  }

  # Specifies the minimum required version of Terraform
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"  # Specifies the AWS region (adjust if needed)
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"  # Amazon Machine Image (AMI) ID
  instance_type = "t2.micro"      # Instance type (you can adjust based on needs)

  tags = {
    Name = "Terraform_Demo"  # Tagging the instance for identification
  }
}
