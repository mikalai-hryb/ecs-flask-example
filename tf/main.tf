provider "aws" {
  region = var.region
}

locals {
  default_vpc = "vpc-0331d5f0129c612aa"

  default_subnets = [
    "subnet-00a1d7b99557a9926", # eu-central-1a
    "subnet-056e5b5aaa8cb3545", # eu-central-1b
    "subnet-0a50b9da3a87c68df", # eu-central-1c
  ]
}

data "aws_ssm_parameter" "ecs_node_ami" {
  name = "/aws/service/ecs/optimized-ami/amazon-linux-2/recommended/image_id"
}

resource "aws_cloudwatch_log_group" "ecs" {
  name              = "/ecs/demo"
  retention_in_days = 14
}
