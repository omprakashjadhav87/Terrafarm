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

resource "local_file" "Geniric_hardcoded" {
  filename = "/temp/file1.txt"
  content  = "hi from ip 1.2.3.4.5"
}

resource "local_file" "Geniric_variable" {
  #key           ="value"
  filename = var.filename_str
  content = var.content_str

}

resource "local_file" "Geniric_list" {
  #key                  ="value"
  filename              = var.file_list[0]
  content               = var.file_list[1]
  file_permission       = var.file_list[2]

}

resource "local_file" "Map_list" {
  #key                  ="value"
 filename                =var.file_map["filename"]
 content                 =var.file_map["content"]
 file_permission         =var.file_map["file_permission"]
}
