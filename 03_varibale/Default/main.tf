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
  conent  = "hi from ip 1.2.3.4.5"
  filename = "/temp/omprakash/file1.txt"
}

resource "local_file" "Geniric_hardcoded_file2" {
  #key           ="value"
  filename      =var.filename2
  conent        =var.conent

}