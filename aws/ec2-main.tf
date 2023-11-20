provider "aws" {
  region = "us-east-1"  # Replace with your desired AWS region
}

resource "aws_instance" "web" {
  ami           = "ami-0f34c5ae932e6f0e4"  # Replace with the desired AMI ID for your region
  instance_type = "t2.micro"               # Replace with the desired instance type

  tags = {
    Name = "MyEC2Instance"  # Replace with your desired instance name
  }
}
