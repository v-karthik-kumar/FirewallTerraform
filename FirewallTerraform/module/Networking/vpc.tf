resource "aws_vpc" "Firewall-VPC" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = var.instance_tenancy
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_classiclink   = var.enable_classiclink

  tags = {
    Name = "Firewall-VPC"
  }
}

output "vpc_id"{
  value = aws_vpc.Firewall-VPC.id
}
