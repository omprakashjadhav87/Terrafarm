#================================================================================#

#Provider initilze#

#=================================================================================#
terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

provider "local" {
  # Configuration options
}





#================================================================================#

#Create file#

#=================================================================================#

resource "local_file" "Generic_txt_file1" {
    filename                                = "/temp/terracode/om.txt"
    content                                 = "Hi Omprakash this folder creation using terraform"
    file_permission                         = "0700"
    directory_permission                    = "0700"
  
}

resource "local_file" "Generic_txt_file1" {
filename = "/mnt/om.txt"
content = "hi terraform team"
}