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
  
variable "ebs_volume" {
    type = map(string)
  
}

variable "aws_iam_role" {
    type = string
  
}

/*variable for SG */

variable "sg_name" {
    type = string
  
}
variable "description" {
  
}

variable "sg_tags" {
    type = map(string)
  
}

variable "sg_port" {
    type = list(number)
  
}