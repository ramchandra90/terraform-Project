resource "aws_security_group" "allow_ssh_terraform" {
  name = "allow_sshh"
    description = "Allow port number 22 for SSH Acess"

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

   tags = {
    Name = "allow_sshh"
  }  
}