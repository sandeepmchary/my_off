provider "aws"{
    profile = "terra"
    region = "us-east-2"
}
resource "aws_vpc" "alia_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
      Name = "alia_vpc"
  }

}
resource "aws_subnet" "alia_subnet" {
  vpc_id = aws_vpc.alia_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-2a"
  tags = {
    "Name" = "alia_subnet"
    "Subnet" = "01"
  }
}
data "aws_vpc" "default_vpc" {
    default = true
}

resource "aws_subnet" "alia_sub2" {
  vpc_id = data.aws_vpc.default_vpc.id
  cidr_block = "172.31.48.0/20"
  availability_zone = "us-east-2b"
  tags = {
    "Name" = "alia_sub2"
  }
}

