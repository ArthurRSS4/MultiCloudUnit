resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  
  tags = {
    Name        = "vpc-${var.environment}"
    Environment = var.environment
    Project     = "TechFusion"
  }
}

resource "aws_subnet" "private" {
  count = length(var.private_subnets)
  
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnets[count.index]
  availability_zone = element(["us-east-1a", "us-east-1b"], count.index)
  
  tags = {
    Name = "private-subnet-${count.index + 1}-${var.environment}"
    Type = "Private"
  }
}

resource "aws_security_group" "kafka" {
  name        = "kafka-sg-${var.environment}"
  description = "Security group for Kafka brokers"
  vpc_id      = aws_vpc.main.id
  
  ingress {
    description = "Kafka internal"
    from_port   = 9092
    to_port     = 9092
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = {
    Environment = var.environment
  }
}