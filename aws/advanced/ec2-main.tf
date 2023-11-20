resource "aws_instance" "appserver" {
  ami                    = "ami-0b5eea76982371e91"  # Replace with the desired AMI ID for your region
  instance_type          = "t2.micro"               # Replace with the desired instance type
  key_name               = "demo-instance"     # Replace with the name of your EC2 key pair
  security_groups        =  ["launch-wizard-4"]  # Replace with the name of your security group

  # Uncomment the following lines if you want to assign a public IP to the instance.
  # Associate a public IP address only if your subnet is public.
  # associate_public_ip_address = true

  # Uncomment the following lines if you want to use user_data to run scripts on instance launch.
  # user_data = <<-EOF
  #   #!/bin/bash
  #   echo "Hello from the EC2 instance!"
  #   EOF

  tags = {
    Name = "MyEC2Instance"  # Replace with your desired instance name
  }
}
