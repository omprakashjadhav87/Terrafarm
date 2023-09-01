cidr_block = "10.0.0.0/16"
pub_subnet_list = [ "10.0.0.0/24","10.0.1.0/24" ]
az_list = [ "us-east-1a","us-east-1b" ]
common_tags = {
  
    "Name"                          = "ekrushi-dev-VPC"
    "igw_name"                      = "ekrushi-dev-igw"
    "pub_subnet_1_name"             = "ekrushi-web_pub_subnet_1a"
    "pub_subnet_1_name"             = "ekrushi-web_pub_subnet_1b"
    "owner"                         = "devopsview"
}