resource "aws_lightsail_instance" "example_instance" {
  name              = "example-instance"
  availability_zone = "us-east-1a"  # Replace with your desired availability zone
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  tags = {
    env = "dev"
  user_data = <<-EOF
              #!/bin/bash
              # This is your user data script
              # You can put your custom initialization code here

              # For example, you can install software or configure settings
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              EOF

  tags = {
    Name = "example-instance"
  }
}
