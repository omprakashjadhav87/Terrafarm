##      vpc.tf    ##

variable "cidr_block" {
    type = string
  
}

variable "common_tags" {
    type = map(string)
  
}
##   pub_sub.tf##

variable "pub_subnet_list" {
    type = list(string)
  
}

variable "az_list" {
    type = list(string)
  
}