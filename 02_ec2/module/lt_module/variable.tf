/* variable for webserver_lt.tf*/

variable "lt_name" {
  type = string
}

variable "instance_type" {
    type = string
  
}
variable "user_data" {
    type = string
  
}

variable "server_tag" {
    type = map(string)
}
    variable "root_volume"{
        type=map(string)
    }
  
variable "iam_role" {
    type = string
  
}

/*variable for SG */

variable "sg_name" {
    type = string
  
}
variable "description" {
  
}

variable "sg_tag" {
    type = map(string)
  
}

variable "sg_port" {
    type = list(number)
  
}

variable "vpc_id" {}




