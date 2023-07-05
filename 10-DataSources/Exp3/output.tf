output "zones_west" {
  value = data.aws_availability_zones.zones_west.names
}

output "zones_east" {
  value = data.aws_availability_zones.zones_east.names
}

output "ami_east" {
  value = data.aws_ami.myami_east.id
}

output "ami_west" {
  value = data.aws_ami.myami_west.id
}

output "count_zone_east" {
  value = tolist([local.az_east_count, local.az_west_count])
}