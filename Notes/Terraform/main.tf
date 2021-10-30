provider "aws" {
  profile = "terra"
  region = "us-east-2"
}
resource "aws_instance" "web_server" {
  ami = "ami-00399ec92321828f5"
  instance_type = "t2.micro"
  tags = {
    #"Env" = "webserver"
    Name = "webserver_with_Terra"
  }
}
