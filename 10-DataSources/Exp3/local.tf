locals {
  az_east_count = length(data.aws_availability_zones.zones_east.names)
  az_west_count = length(data.aws_availability_zones.zones_west.names)
  frontend_east = join("-", tolist([var.project-name, "frontend-east"]))
  frontend_west = join("_", tolist([var.project-name, "frontend-west"]))
}

