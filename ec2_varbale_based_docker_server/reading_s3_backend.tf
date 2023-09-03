######################################################
###  Read s3 details from state file               ###
#######################################################
data "terraform_remote_state" "vpc_details" {
    backend = "s3"
    config = {
      bucket = "terraform-prac-test0124"
      key = "vpc/terraform.tfstate"
      region = "us-east-1"
      profile = "default"
    }
  
}