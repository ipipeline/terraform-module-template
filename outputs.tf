output "instance_id" {
  value = aws_instance.example.id
}

output "instance_arn" {
  value = aws_instance.example.arn
}

output "instance_availability_zone" {
  value = aws_instance.example.availability_zone
}

output "instance_private_ip" {
  value = aws_instance.example.private_ip
}

output "instance_private_dns" {
  value = aws_instance.example.private_dns
}

output "instance_security_groups" {
  value = aws_instance.example.security_groups
}
