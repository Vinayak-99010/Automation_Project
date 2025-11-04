variable "aws_region" {
  description = "AWS region to deploy EC2 instances"
  default     = "us-east-1"
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  default     = 30
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0bdd88bd06d16ba03" # Amazon Linux 2 (change if needed)
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key pair name"
  default     = "AWS-20-08"
}

variable "security_group_id" {
  description = "Security Group ID"
  default     = "sg-051abfb56fdfe0a85"
}

variable "subnet_id" {
  description = "Subnet ID"
  default     = "subnet-017e0e32247e49457"
}

variable "instance_name_prefix" {
  description = "Prefix for instance names"
  default     = "Terraform-EC2"
}

variable "environment" {
  description = "Environment tag for resources"
  default     = "dev"
}
