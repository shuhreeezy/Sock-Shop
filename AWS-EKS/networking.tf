# Create the VPC for the EKS Cluster
resource "aws_vpc" "eks_monitoring_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}

# Create Subnets in different availability zones
resource "aws_subnet" "eks_monitoring_subnet1" {
  vpc_id            = aws_vpc.eks_monitoring_vpc.id
  cidr_block        = var.subnet1_cidr_block
  availability_zone = var.subnet1_availability_zone
}

resource "aws_subnet" "eks_monitoring_subnet2" {
  vpc_id            = aws_vpc.eks_monitoring_vpc.id
  cidr_block        = var.subnet2_cidr_block
  availability_zone = var.subnet2_availability_zone
}
