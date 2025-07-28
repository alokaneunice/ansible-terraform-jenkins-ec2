terraform {
  backend "s3" {
    bucket         = "tweek-bucket345426"
    key            = "githubactions1/terraform.tfstate"
    region         = "us-east-2"  
  }
}