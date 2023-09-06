######################################################
###  Read s3 details from state file               ###
#######################################################
data "terraform_remote_state" "vpc_details" {
    backend = "s3"
    config = {
      bucket = "terraform-prac-test012"
      workspace_key_prefix = "lt"
    key                  = "webserver_httpd_lt.tfstate"
      region = "us-east-1"
      profile = "default"
    }
  
}