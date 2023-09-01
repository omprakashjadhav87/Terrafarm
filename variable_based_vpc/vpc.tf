resource "aws_vpc" "geniric_vpc" {
    cidr_block = var.cidr_block
    instance_tenancy = "default"
  tags = {
    "Name" = var.common_tags ["Name"]
    "owner" = var.common_tags ["owner"]
  }
  enable_dns_hostnames = true
}

output "ekrushi_dev_vpc_id" {
    value = aws_vpc.geniric_vpc.id
  
}