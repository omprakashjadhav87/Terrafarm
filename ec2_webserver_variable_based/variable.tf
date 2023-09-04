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

variable "iam_role" {
    type = string
  
}