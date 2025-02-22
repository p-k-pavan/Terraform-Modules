resource "aws_eip" "natgw_eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.natgw_eip.id
  subnet_id     = var.public_subnets_id

  tags = {
    Name = "${var.vpc_name}-Nat-Gw"
  }
}
