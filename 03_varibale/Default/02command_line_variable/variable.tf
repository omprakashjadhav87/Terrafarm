variable "filename_str"{

    default = "/mt/str.txt"
    description ="this the file name variable"
    type = string 
}

variable "content_str" {
    default = "hi from ip 1.2.3.4.5"
    description = "ip info"
    type = string
  
}

#Declare List variable##
#List =[]
variable "file_list" {
    default                = ["/mnt/list.txt","hi from list", "0777"]
    type                   = list(string)
                       
  
}

#Declare map variable
#{key="value"}
#va.file.map["filename"]
variable "file_map"{
    type        =map(string)
    default = {
        #"key"= "value"
        "filename"              ="/mnt/map.txt"
        "content"               = "this the map file"
        "file_permission"       = "0777"
    }
}