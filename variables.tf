variable "aws_region" {
  default = "af-south-1"
}

variable "ami_id" {
  default = "ami-0e342d72b12109f91" # Amazon Linux 2 in Cape Town
}

variable "instance_type" {
  default = "t2.micro"
}
