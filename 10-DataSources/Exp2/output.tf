output zones_west {
  value       = data.aws_availability_zones.zones_west.names
}

output zones_east {
  value       = data.aws_availability_zones.zones_east.names
}

output ami_east {
  value       = data.aws_ami.myami_east.id 
}

output ami_west {
  value       = data.aws_ami.myami_west.id 
}