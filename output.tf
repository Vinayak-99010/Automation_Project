output "instance_public_ips" {
  description = "Public IPs of all EC2 instances"
  value       = [for instance in aws_instance.ec2_instances : instance.public_ip]
}

output "instance_ids" {
  description = "IDs of all EC2 instances"
  value       = [for instance in aws_instance.ec2_instances : instance.id]
}
