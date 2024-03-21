terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0, < 6.0.0"
    }
  }
  cloud {
    organization = "mikalai-hryb"
    workspaces {
      name = "flask-example"
    }
  }
}