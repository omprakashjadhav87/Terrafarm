/* variable for webserver_lt.tf*/

variable "lt_name" {
  type = string
}

variable "instance_type" {
    type = string
  
}
variable "userdata_file" {
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

variable "securitygroup_name" {
    type = string
  
}
variable "sg_description" {
  
}

variable "sg_tags" {
    type = map(string)
  
}

variable "sg_port" {
    type = list(number)
  
}

/*var for asg.tf */
variable "asg_name"{
    type = string
}

variable "max_size" {}
variable "min_size" {}
variable "desired_capacity" {}


