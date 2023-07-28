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
  filename = var.filename
  content = var.content

}