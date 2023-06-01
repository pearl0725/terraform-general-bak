resource "aws_subnet" "public" {
  count = length(var.public_subnets)

  vpc_id            = aws_vpc.this.id
  availability_zone = var.vpc_azs[count.index]
  cidr_block        = var.public_subnets[count.index]

  map_public_ip_on_launch = var.enable_public_ip_on_launch

  tags = var.public_subnet_tags
}

resource "aws_subnet" "private" {
  count = length(var.private_subnets)

  vpc_id            = aws_vpc.this.id
  availability_zone = var.vpc_azs[count.index]
  cidr_block        = var.private_subnets[count.index]

  tags = var.private_subnet_tags
}
