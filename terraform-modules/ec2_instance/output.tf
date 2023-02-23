output "arn" {
  value = aws_instance.instance[*].arn
}

output "private_ip" {
  value = aws_instance.instance[*].private_ip
}

output "instance_id" {
  value = aws_instance.instance[*].id
}

output "instance_az" {
  value = aws_instance.instance[*].availability_zone
}

output "tags" {
  value = aws_instance.instance[*].tags
}