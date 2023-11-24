provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "ami value"
}

variable "instance_type" {
  description = "instance type"
}

module "instance" {
  source        = "./Module"
  ami           = var.ami
  instance_type = var.instance_type
}
output "public_ip" {
  value = module.instance.public_ip
}

output "instance_id" {
  value = module.instance.Instance_ec2_id
}

module "s3_bucket" {
  source = "./S3-bucket"
}

output "bucket" {
  value = module.s3_bucket.S3_bucket
}
