cidr_block = "172.16.0.0/16"
pub_subnet_list = [ "172.16.0.0/24","172.16.1.0/24" ]
az_list = [ "us-east-1c","us-east-1a" ]
common_tags = {
  
    "Name"                          = "maha-dev-VPC"
    "igw_name"                      = "maha-dev-igw"
    "pub_subnet_1_name"             = "maha-web_pub_subnet_1c"
    "pub_subnet_2_name"             = "maha-web_pub_subnet_1a"
    "owner"                         = "devopsview"
}