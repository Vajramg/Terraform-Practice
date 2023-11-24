provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test-vm" {
  ami           = var.ami
  instance_type = var.instance_type
}

output "public_ip" {
  value = aws_instance.test-vm.public_ip
}

output "Instance_id" {
  value = aws_instance.test-vm.ami
}


