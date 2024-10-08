
resource "aws_instance" "test-instance-01"{
    ami             =   "ami-0e6a13e7a5b66ff4d"
    instance_type   =   "t2.micro"
    tags = {
      Name = "test-instance-01"
  }
}
