resource "aws_internet_gateway" "tf-igw-practica-examen-2" {
  vpc_id = aws_vpc.my_vpc_practica_tf.id
  tags = {
    Name = "tf-igw-practica-examen-2"
  }
}

