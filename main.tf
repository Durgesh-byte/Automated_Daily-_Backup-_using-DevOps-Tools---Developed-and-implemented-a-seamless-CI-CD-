provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web_server" {
  ami           = "ami-0c55b159cbfafe1f0" # Example AMI for Amazon Linux 2
  instance_type = "t2.micro"

  tags = {
    Name = "WebServer"
  }
}

output "instance_ip" {
  value = aws_instance.web_server.public_ip
}
