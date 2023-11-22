provider "aws" {
  region = "us-east-1" # Change this to your desired AWS region
}


resource "aws_key_pair" "example" {
  key_name = "example-key"
  public_key = file("~/.ssh/id_rsa.pub") # Replace with the path to your public key
}


resource "aws_instance" "example" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.example.key_name

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              service httpd start
              echo "<html><body><h1>Hello from Terraform EC2</h1></body></html>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "example-instance"
  }
}

