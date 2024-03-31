terraform {
  // configuração do provedor
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

// definindo a região de sp
provider "aws" {
  region = "sa-east-1"
}

// selecionando ubuntu server pela ami, pegando info no EC2
resource "aws_instance" "app_server" {
  ami           = "ami-08af887b5731562d3"
  instance_type = "t3.micro"
  key_name = "key-agendar-aqui"
  tags = {
    Name = "admin-agendar-aqui"
  }
}
