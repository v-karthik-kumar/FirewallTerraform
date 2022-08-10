resource "aws_subnet" "Firewall-subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = "${var.public_subnets[0]}"
  map_public_ip_on_launch = var.map_public_ip_on_launch
  availability_zone       = var.availability_zone

  tags = {
    Name = "Firewall-subnet"
  }
}
resource "aws_subnet" "Resource-subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = "${var.public_subnets[1]}"
  map_public_ip_on_launch = var.map_public_ip_on_launch
  availability_zone       = var.availability_zone

  tags = {
    Name = "Resource-subnet"
  }
}

output "Firewall_subnet_id" {
  value = aws_subnet.Firewall-subnet.id
}
output "Resource_subnet_id" {
  value = aws_subnet.Resource-subnet.id
}
