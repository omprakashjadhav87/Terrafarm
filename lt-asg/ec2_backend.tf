########################        #
####  Store state in s3        ##
#################################

terraform {
  backend "s3" {
    bucket = "terraform-prac-test012"
    workspace_key_prefix = "lt"
    key    = "websever_lt.tfstate"
    region = "us-east-1"
    profile = "default"
  }
}