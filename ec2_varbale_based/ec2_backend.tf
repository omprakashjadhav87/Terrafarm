terraform {
  backend "s3" {
    bucket = "terraform-prac-test0124"
    key    = "ec2/ec2.tfstate"
    region = "us-east-1"
    profile = "default"
  }
}