resource "aws_instance" "terraform" {

    ami = "var.ami_id"
    instance_type = "var.instance_type"
    tags = {
        Name = "terraform"
    }
    vpc_security_group_ids = var.sg_name

}

resource "aws_security_group" "allow_ssh_terraform" {

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

    egress {
    from_port        = "var.from_port"
    to_port          = "var.to_port"
    protocol         = "var.protocol"
    cidr_blocks      = "var.cidr"
    ipv6_cidr_blocks = ["::/0"]
  }

   tags = var.tags

}
