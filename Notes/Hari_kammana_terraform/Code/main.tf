provider "aws"{
    profile = "terra"
    region = "us-east-2"
}
resource "aws_vpc" "javahome" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    "Name" = "JavaHOme"
  }
}
output "javahomecidr" {
  value = "${aws_vpc.javahome.cidr_block}"
}
output "vpc_id_value" {
  value = "${aws_vpc.javahome.id}"
}