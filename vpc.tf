# configure vpc (virtual private cloud)
resource "aws_vpc" "tfvpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "tfvpc"
  }
}



# configure security group
resource "aws_security_group" "sg" {
  name = "ec2_sg"
  description = "Allow SSH inbound"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}



# configure public subnet
resource "aws_subnet" "pub_sub" {
  vpc_id     = aws_vpc.tfvpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone    = "ap-south-1a"

  tags = {
    Name = "pub_sub"
  }
}



# configure private subnet
resource "aws_subnet" "pri_sub" {
  vpc_id     = aws_vpc.tfvpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone   = "ap-south-1a"

  tags = {
    Name = "pri_sub"
  }
}



# configure internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.tfvpc.id

  tags = {
    Name = "igw"
  }
}



# configure route table
resource "aws_route_table" "route" {
  vpc_id = aws_vpc.tfvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "route_table"
  }
}



# configure route table association
resource "aws_route_table_association" "route_asso" {
  subnet_id      = aws_subnet.pub_sub.id
  route_table_id = aws_route_table.route.id
}