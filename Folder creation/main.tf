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

resource "local_file" "om_text1" {
    filename = "/temp/om.txt"
    content = "Hi Omprakash this folder creation using terraform"
  
}