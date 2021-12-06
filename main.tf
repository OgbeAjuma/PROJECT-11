resource "aws_vpc" "project-11" {
  cidr_block       = var.vpc-cidr11
  instance_tenancy = "default"

  tags = {
    Name = var.name-vpcproj11
  }
}

# Public Subnet

resource "aws_subnet" "pubsubnet-01" {
  vpc_id     = aws_vpc.project-11.id
  cidr_block = var.public-subnet-01
  availability_zone = "eu-west-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = var.name-pubsub1
  }
}

resource "aws_subnet" "pubsubnet-02" {
  vpc_id     = aws_vpc.project-11.id
  cidr_block = var.public-subnet-02
  availability_zone = "eu-west-2b"
  map_public_ip_on_launch = true

  tags = {
    Name = var.name-pubsub2
  }
}
#Private subnet

resource "aws_subnet" "privsubnet-01" {
  vpc_id     = aws_vpc.project-11.id
  cidr_block = var.private-subnet-01
  availability_zone = "eu-west-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = var.name-privsub1
  }
}


resource "aws_subnet" "privsubnet-02" {
  vpc_id     = aws_vpc.project-11.id
  cidr_block = var.private-subnet-02
  availability_zone = "eu-west-2b"
  map_public_ip_on_launch = true

  tags = {
    Name = var.name-privsub2
  }
}

#Route table

resource "aws_route_table" "publicroute01" {
  vpc_id = aws_vpc.project-11.id

  tags = {
    Name = var.name-tagpubrt
  }
}

resource "aws_route_table" "privateroute01" {
  vpc_id = aws_vpc.project-11.id

  route = []

  tags = {
    Name = var.name-tagprivrt
  }
}

#RT association

resource "aws_route_table_association" "pubblicrt-asso01" {
  subnet_id      = aws_subnet.pubsubnet-01.id
  route_table_id = aws_route_table.publicroute01.id
}

resource "aws_route_table_association" "publicrt-asso02" {
  subnet_id      = aws_subnet.pubsubnet-02.id
  route_table_id = aws_route_table.publicroute01.id
}

resource "aws_route_table_association" "privateroute-asso01" {
  subnet_id      = aws_subnet.privsubnet-01.id
  route_table_id = aws_route_table.privateroute01.id
}

resource "aws_route_table_association" "privateroute-asso02" {
  subnet_id      = aws_subnet.privsubnet-02.id
  route_table_id = aws_route_table.privateroute01.id
}

#Igw

resource "aws_internet_gateway" "igw-project-11" {
  vpc_id = aws_vpc.project-11.id

  tags = {
    Name = var.name-tagigw
  }
}

resource "aws_route" "igw-rtasso-proj11" {
  route_table_id = aws_route_table.publicroute01.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id     = aws_internet_gateway.igw-project-11.id
}