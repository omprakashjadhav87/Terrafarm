
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

/* variable for web server_lt.tf */
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