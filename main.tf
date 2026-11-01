provider "aws" {
  region     = var.aws_region
  access_key = "AKIAQL3I5B4GF6P57H6Q"
  secret_key = "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"
}

# --- VPC & Subnet (Required for EC2 placement) ---
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
}

resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
}

# --- EC2 Instance with Specific AMI ---
resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "MyCustomAmiInstance"
  }
}
