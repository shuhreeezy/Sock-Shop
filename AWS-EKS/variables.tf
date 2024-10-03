variable "aws_region" {
  description = "The AWS region where the EKS cluster will be created"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
}

variable "vpc_name" {
  description = "The name of the VPC"
}

variable "subnet1_cidr_block" {
  description = "The CIDR block for the first subnet"
}

variable "subnet1_availability_zone" {
  description = "The availability zone for the first subnet"
}

variable "subnet2_cidr_block" {
  description = "The CIDR block for the second subnet"
}

variable "subnet2_availability_zone" {
  description = "The availability zone for the second subnet"
}
