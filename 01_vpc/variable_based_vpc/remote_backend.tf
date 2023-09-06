terraform {
  backend "s3" {
    bucket = "terraform-prac-test012"
    workspace_key_prefix = "vpc"
    key                  = "vpc.tfstate"
    region = "us-east-1"
    profile = "default"
  }
}
