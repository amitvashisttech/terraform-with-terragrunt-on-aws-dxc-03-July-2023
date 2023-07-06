terraform {
    backend "s3" {
      bucket = "terraform-demo-av-6july2023"
      region = "us-east-2"
      key= "project-B/terraform.tfstate"
    }
    

    required_providers {
      aws = {
        source = "hashicorp/aws"
      } 
   }
}
