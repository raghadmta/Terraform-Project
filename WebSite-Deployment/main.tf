resource "aws_instance" "ubuntu" {
ami = "ami-0cff7528ff583bf9a"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.allow_tls.id]
user_data = file("install.sh")
tags = {
"Name" : "website name instance"
"DEV" : "First_Test"
}
}
resource "aws_security_group" "allow_tls" {
vpc_id = "vpc-005f221a46c085276"
ingress {
description = "port 80"
from_port = 80
to_port = 80
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
ingress {
description = "port 443"
from_port = 443
to_port = 443
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
ipv6_cidr_blocks = ["::/0"]
}
}