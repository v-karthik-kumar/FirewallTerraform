resource "aws_internet_gateway" "CloudthatIGW" {
  vpc_id = var.vpc_id
  tags = {
    Name = "CloudthatIGW-gw"
  }
}
