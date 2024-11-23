terraform {
    backend "s3" {
      bucket = "prod"
      key = "prod/terraform.tfstate"
    }
    
}