resource "aws_eip" "example_eip" {
  vpc = true
  tags = {
    Name = "tf-eip-practica-examen"
  }
}

resource "aws_nat_gateway" "tf_nat" {
  allocation_id = aws_eip.example_eip.id
  subnet_id = aws_subnet.tf-public-subnet.id
  tags = {
    Name = "tf-nat-practica-examen-1"
  }
}
