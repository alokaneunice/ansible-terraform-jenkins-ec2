terraform {
  backend "s3" {
    bucket         = "tweek-bucket345426"
    key            = "githubactions/terraform.tfstate"
    region         = "us-east-2"  
  }
}