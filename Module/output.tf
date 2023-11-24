output "public_ip_address" {
  value = aws_instance.test-vm.public_ip
}

output "Instance_ec2_id" {
  value = aws_instance.test-vm.id
}
