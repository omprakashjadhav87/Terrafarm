########################        #
####  Store state in s3        ##
#################################

terraform {
  backend "s3" {
    bucket = "terraform-prac-test012"
    key    = "ec2/ec2webserver.tfstate"
    region = "us-east-1"
    profile = "default"
  }
}