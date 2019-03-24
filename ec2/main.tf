locals {
  environment = "${var.env}"
}

data "aws_ami" "this_ami" {
  owners = ["amazon"]
  most_recent = true

  filter {
    name = "name"
    values = ["amzn-ami-hvm-2018*-gp2"]
  }
}

resource "aws_instance" "this_instance" {
  ami = "${data.aws_ami.this_ami.id}"
  instance_type = "${var.instance_type}"

  tags {
    Name = "${var.name}"
    ENV = "${local.environment}"
  }
}
