resource "aws_instance" "aws" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.sg.id]

    tags = {
      Name = "terraform"
    }
  
}