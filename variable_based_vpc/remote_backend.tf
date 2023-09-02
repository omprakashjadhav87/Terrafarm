terraform {
  backend "s3" {
    bucket = "terraform-prac-test0124"
    key    = "vpc/terraform.tfstate"
    region = "us-east-1"
    profile = "default"
  }
}
