
variable "ec2_instance_type" {
  description = "Ec2 Instance Type for Deployments"
  type        = string
  default     = "t2.micro"
}

variable "project-name" {
  description = "Ec2 Instance Tag ProjectName"
  type        = string
  default     = "Terrafrom-Demo"
}