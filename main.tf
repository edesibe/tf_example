module "this_module" {
  source = "./ec2"
  env = "${var.env}"
  name = "${var.name}"
  instance_type = "${var.instance_type}"
}

resource "aws_eip" "this_eip" {
  instance = "${module.this_module.module_instance_id}"
}