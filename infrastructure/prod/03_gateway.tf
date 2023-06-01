resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id

  tags = var.igw_tags
}

resource "aws_eip" "this" {
  vpc = var.eip_vpc_true

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_nat_gateway" "this" {
  allocation_id = aws_eip.this.id
  subnet_id     = aws_subnet.public[0].id

  tags = var.nat_tags
}
