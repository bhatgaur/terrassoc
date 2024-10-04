variable "aws_access_key" {
  description = "AWS access key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
}

provider "aws" {
  region     = "eu-central-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "test-instance-01"{
    ami             =   "ami-0e6a13e7a5b66ff4d"
    instance_type   =   "t2.micro"
    tags = {
      Name = "test-instance-01"
  }
}