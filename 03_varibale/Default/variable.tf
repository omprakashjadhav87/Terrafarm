variable "filename"{

    default = "/mt/var.text"
    description ="this the file name variable"
    type = string 
}

variable "content" {
    default = "hi from ip 1.2.3.4.5"
    description = "ip info"
    type = string
  
}