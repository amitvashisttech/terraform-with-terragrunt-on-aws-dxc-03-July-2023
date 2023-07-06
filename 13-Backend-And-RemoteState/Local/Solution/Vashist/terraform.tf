terraform {
    backend "local" {
      path = "/var/tmp/terraform-local-backend/terraform.tfstate"
    }
    

    required_providers {
      aws = {
        source = "hashicorp/aws"
      } 
   }
}