terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0fff1b9a61dec8a5f"
  instance_type = "t2.micro"
  key_name = "rabadkeypem"
  vpc_security_group_ids = ["sg-0b28034903b8c1cf1"]

  tags = {
    Name = "ExampleAppServerInstance2"
  }
}
