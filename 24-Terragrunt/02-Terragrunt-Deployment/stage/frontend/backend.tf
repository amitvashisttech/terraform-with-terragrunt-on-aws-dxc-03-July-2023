# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket = "terraform-demo-av-10july2023"
    key    = "stage/frontend/terrafrom.tfstate"
    region = "us-east-2"
  }
}
