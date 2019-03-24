output "public_ip" {
  value = "${aws_eip.this_eip.public_ip}"
}