resource "aws_vpc" "default" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true
  tags = {
    Name        = "${var.vpc_name}"
    environment = "${var.environment}"
  }
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id
  tags = {
    Name        = "${var.vpc_name}-IGW"
    environment = "${var.environment}"
  }
}
