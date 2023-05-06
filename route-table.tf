resource "aws_route_table" "tf_rt" {
  vpc_id = aws_vpc.my_vpc_practica_tf.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tf-igw-practica-examen-2.id
  }
  tags = {
    Name = "tf-rt-practica-examen"
  }
}

# Asociar la subnet pública con la tabla de rutas
resource "aws_route_table_association" "public_subnet_association" {
  subnet_id = aws_subnet.tf-public-subnet.id
  route_table_id = aws_route_table.tf-rt-practica-examen.id
}
resource "aws_route_table" "tf-rt-practica-examen" {
  vpc_id = aws_vpc.my_vpc_practica_tf.id
}
