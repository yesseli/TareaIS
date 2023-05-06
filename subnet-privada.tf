resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.my_vpc_practica_tf.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "tf-private-subnet"
  }
}
