resource "aws_internet_gateway" "geniric_igw" {
    vpc_id = aws_vpc.geniric_vpc.id
    tags = {
    "Name" = var.common_tags ["igw_name"]
    "owner" = var.common_tags ["owner"]
  }
}