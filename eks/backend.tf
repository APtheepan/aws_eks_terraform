terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"    
    }
  }
  
  backend "s3" {
    bucket = "eks-remote-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
    profile = "Jenkins_server"
  }
 
}
provider "aws" {
  region = "us-east-1"
  #shared_credentials_files = ["~/.aws/credentials"]
  profile = "Jenkins_server"
}


