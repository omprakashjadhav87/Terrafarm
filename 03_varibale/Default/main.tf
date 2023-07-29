#
#
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.10.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "local_file" "Geniric_hardcoded_file1" {
  filename = "/temp/file1.txt"
  content  = "hi from ip 1.2.3.4.5"
}

resource "local_file" "Geniric_variable_file2" {
  #key           ="value"
  filename = var.filename_str
  content = var.content_str

}

resource "local_file" "Geniric_list_file2" {
  #key                  ="value"
  filename              = var.file_list[0]
  content               = var.file_list[1]
  file_permission       = var.file_list[2]

}