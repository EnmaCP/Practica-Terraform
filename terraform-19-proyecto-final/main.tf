# 1. Provider de AWS
provider "aws" {
  region = var.region
}

# 2. VPC
resource "aws_vpc" "vpc_principal" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "${var.nombre_proyecto}-vpc"
  }
}

# 3. Dos Subnets (Pública y Privada)
resource "aws_subnet" "subnet_publica" {
  vpc_id                  = aws_vpc.vpc_principal.id
  cidr_block              = var.subnet_publica_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.nombre_proyecto}-subnet-publica"
  }
}

resource "aws_subnet" "subnet_privada" {
  vpc_id     = aws_vpc.vpc_principal.id
  cidr_block = var.subnet_privada_cidr

  tags = {
    Name = "${var.nombre_proyecto}-subnet-privada"
  }
}

# 4. Security Group (para la VPC)
resource "aws_security_group" "sg_instancia" {
  name        = "${var.nombre_proyecto}-sg"
  description = "Security Group para la instancia EC2"
  vpc_id      = aws_vpc.vpc_principal.id

  ingress {
    description = "SSH desde cualquier origen"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.nombre_proyecto}-sg"
  }
}

# 5. Data source para una AMI reciente (Amazon Linux 2023)
data "aws_ami" "amazon_linux_2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# 6. Instancia EC2 en la subnet pública
resource "aws_instance" "ec2_publica" {
  ami                    = data.aws_ami.amazon_linux_2023.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.subnet_publica.id
  vpc_security_group_ids = [aws_security_group.sg_instancia.id]

  tags = {
    Name = "${var.nombre_proyecto}-ec2"
  }
}

# 7. Bucket S3 con nombre único (usando bucket_prefix)
resource "aws_s3_bucket" "bucket_proyecto" {
  bucket_prefix = "${var.nombre_proyecto}-"

  tags = {
    Name = "${var.nombre_proyecto}-bucket"
  }
}