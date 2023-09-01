resource "aws_vpc" "geniric_vpc" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
  tags = {
    "Name" = "ekrushi-dev-VPC"
    "owner" = "devopsview"
  }
  enable_dns_hostnames = true
}