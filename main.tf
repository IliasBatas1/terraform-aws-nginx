resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow HTTP traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "nginx_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  user_data     = file("userdata.sh")
  security_groups = [aws_security_group.allow_http.name]

  tags = {
    Name = "TerraformNginx"
  }
}
