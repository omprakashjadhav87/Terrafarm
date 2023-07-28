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
  content  = "Welcome to Terraforam lab"
  filename = "/temp/omprakash/file1.txt"
}

resource "local_file" "Geniric_hardcoded_file2" {
  content  = Welcome to Terraforam lab
  filename = /temp/omprakash/file2.txt
}