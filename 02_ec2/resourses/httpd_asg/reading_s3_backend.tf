######################################################
###  Read s3 details from state file               ###
#######################################################
data "terraform_remote_state" "vpc_details" {
    backend = "s3"
    config = {
      bucket = "terraform-prac-test012"
      key                 = "vpc/${terraform.workspace}/vpc.tfstate"
      region = "us-east-1"
      profile = "default"
    }
}

# s3//terraform-prac-test012 /VPC/stage/vpc.tfstate