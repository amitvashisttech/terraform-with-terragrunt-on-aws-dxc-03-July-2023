module "frontend_east" { 
    source = "../modules/ec2"
    ec2_instance_count = 2
    project-name = "Frontend-East"
}

module "frontend_west" { 
    source = "../modules/ec2"
    ec2_instance_count = 1
    project-name = "Frontend-West"
    region = "us-west-2"
}

/*
output "public_ip" {
  value       = module.frontend_east.aws_instance.web.*.public_ip
}
*/

output "frontend_east_public_ip" {
  value       = module.frontend_east.public_ip
}

output "frontend_west_public_ip" {
  value       = module.frontend_west.public_ip
}

output "public_ips" {
    value = "${tolist([module.frontend_east.public_ip, module.frontend_east.public_ip])}"
}

output "public_dns" {
    value = "${tolist([module.frontend_east.public_dns, module.frontend_east.public_dns])}"
}

output "private_ips" {
    value = "${tolist([module.frontend_east.private_ip, module.frontend_east.private_ip])}"
}

output "private_ip_dns" {
    value = "${tolist([module.frontend_east.private_dns, module.frontend_east.private_dns,module.frontend_east.private_ip, module.frontend_east.private_ip ])}"
}