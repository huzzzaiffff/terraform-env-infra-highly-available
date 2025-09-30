terraform {
  required_version = ">= 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }
}

provider "aws" {
  region = var.region
}

module "network" {
  source = "../../modules/vpc"
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  env         = var.environment
}

module "application" {
  source = "../../modules/app-infra"
  vpc_id         = module.network.vpc_id
  environment    = var.environment
  instance_type  = var.instance_type
  subnet_id      = module.network.public_subnet_id
}