# Existing VPC resource configuration
resource "aws_vpc" "main" {
  cidr_block           = "172.31.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  
  tags = {
    Name = "default"
  }
}

# Existing subnet configurations
resource "aws_subnet" "public_2a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.31.0.0/20"
  availability_zone = "us-east-2a"
  map_public_ip_on_launch = true
  tags = {
    Name = "Public-2a"
  }
}

# New Subnet
resource "aws_subnet" "public_2b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.31.16.0/20"
  availability_zone = "us-east-2b"
  
  tags = {
    Name = "Public-2b"
  }
}
