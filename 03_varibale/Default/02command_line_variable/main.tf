terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.10.0"
    }
  }
}

provider "local" {
  # Configuration options
}
#Comand line variable
resource "local_file" "Geniric_string_file1" {
  #key           ="value"
  filename = var.filename_str
  content = var.content_str

}
