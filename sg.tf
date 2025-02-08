resource "aws_security_group" "sg" {
    name = "security group"
    description = "Enabling inbound and outbound groups"
    ingress{
        description = "allowing inbound rules"
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress{
        description = "allowing out bound rule"
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
      name = "terrafrom_security"
    }
  
}