output front_server_public_ip_1 {
  value       = aws_instance.front[0].public_ip
  description = "description"
}

output front_server_public_ip_all {
  value       = aws_instance.front.*.public_ip
  description = "description"
}

output front_server_dns_name {
  value       = aws_instance.front.*.public_dns
  description = "description"
}