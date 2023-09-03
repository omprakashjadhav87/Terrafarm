terraform {
  backend "s3" {
    bucket = "terraform-prac-test012"
    key    = "vpc/vpc.tfstate"
    region = "us-east-1"
    profile = "default"
  }
}
