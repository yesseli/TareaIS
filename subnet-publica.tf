resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.my_vpc_practica_tf.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "tf-public-subnet"
  }
}
resource "aws_subnet" "tf-public-subnet" {
  vpc_id     = aws_vpc.my_vpc_practica_tf.id
  cidr_block = "10.0.1.0/24"
}
