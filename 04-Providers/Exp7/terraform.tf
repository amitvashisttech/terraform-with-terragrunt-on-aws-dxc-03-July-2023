terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = ">=4.44, <=4.46"
      } 

      azurerm = {
        source = "hashicorp/azurerm"
        version = ">=2.40, <=2.48"
      } 
    }
}

