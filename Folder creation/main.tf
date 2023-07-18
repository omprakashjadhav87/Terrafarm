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

resource "local_file" "om.text" {
    filename = "/temp/om.txt"
  
}