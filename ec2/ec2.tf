resource "aws_security_group" "allow_ssh_terraform" {

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

    egress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

   tags = {
    Name = "allow_ssh"
  }

}


resource "aws_instance" "terraform" {
    ami = "ami-0b4f379183e5706b9"
    instance_type = "t2.micro"
    tags = {
        Name = "my ec2"
    }
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]

}
