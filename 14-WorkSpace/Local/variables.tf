
variable "ec2_instance_type" {
  description = "Ec2 Instance Type for Deployments"
  type        = map(any)
  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "t2.large"
    dxc     = "t2.nano"
  }
}

variable "ec2_instance_count" {
  description = "Ec2 Instance Type for Deployments"
  type        = map(any)
  default = {
    default = 1
    dev     = 2
    prod    = 3
    dxc     = 5
  }
}

variable "project-name" {
  description = "Ec2 Instance Tag ProjectName"
  type        = string
  default     = "Terrafrom-Demo"
}




variable "region" {
  description = "Ec2 Instance Count for Deployments"
  default     = "us-east-2"
}