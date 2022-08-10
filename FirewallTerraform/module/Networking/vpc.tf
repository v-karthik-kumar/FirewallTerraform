resource "aws_vpc" "EKS_VPC" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = var.instance_tenancy
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_classiclink   = var.enable_classiclink

  tags = {
    Name = "EKS_vpc"
  }
}

output "output_vpc"{
  value = aws_vpc.EKS_VPC.id
}