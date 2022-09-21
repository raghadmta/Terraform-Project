data "aws_region" "current" {}


data "aws_vpc" "default" {
  default = true
}

locals {
  region = data.aws_region.current.name
}