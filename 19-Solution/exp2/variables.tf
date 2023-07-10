
variable "ec2_region_east" {
  description = "Ec2 Instance Deployments Region"
  type        = string
  default     = "us-east-2"
}


variable "ec2_region_west" {
  description = "Ec2 Instance Deployments Region"
  type        = string
  default     = "us-west-2"
}


variable "ec2_instance_type" {
  description = "Ec2 Instance Type for Deployments"
  type        = string
  default     = "t2.micro"
}



variable "ec2_instance_count" {
  description = "Ec2 Instance Type for Deployments"
  type        = string
  default     = 2
}



variable "ec2_instance_front_east_name" {
  description = "Ec2 Instance Tag for Deployments"
  type        = string
  default     = "Frontend-East"
}
variable "ec2_instance_front_west_name" {
  description = "Ec2 Instance Tag for Deployments"
  type        = string
  default     = "Frontend-West"
}
variable "ec2_instance_back_east_name" {
  description = "Ec2 Instance Tag for Deployments"
  type        = string
  default     = "Backend-East"
}
variable "ec2_instance_back_west_name" {
  description = "Ec2 Instance Tag for Deployments"
  type        = string
  default     = "Backend-West"
}
