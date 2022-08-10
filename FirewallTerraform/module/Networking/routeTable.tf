resource "aws_route_table" "FirewallRT" {
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.CloudthatIGW.id
  }
  tags = {
    Name = "FirewallRT"
  }
}
resource "aws_route_table" "ResourceRT" {
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Capstone-gw.id
  }
  tags = {
    Name = "ResourceRT"
  }
}
resource "aws_route_table" "IGWRT" {
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Capstone-gw.id
  }
  tags = {
    Name = "IGWRT"
  }
}
resource "aws_route_table_association" "FirewallRTableA" {
  subnet_id      = aws_subnet.Firewall-subnet.id
  route_table_id = aws_route_table.FirewallRT.id
}
resource "aws_route_table_association" "ResourceRTableA" {
  subnet_id      = aws_subnet.Resource-subnet.id
  route_table_id = aws_route_table.ResourceRT.id
}
