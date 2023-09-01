resource "aws_subnet" "geniric_pub_subnet_1" {
    vpc_id = aws_vpc.geniric_vpc.id
    availability_zone = var.az_list[0]
    cidr_block = var.pub_subnet_list[0]
    map_public_ip_on_launch = "true"
        tags = {
    "Name" = var.common_tags ["pub_subnet_1_name"]
    "owner" = var.common_tags ["owner"]
  }
  
}

resource "aws_subnet" "geniric_pub_subnet_2" {
    vpc_id = aws_vpc.geniric_vpc.id
    availability_zone = var.az_list[1]
    cidr_block = var.pub_subnet_list[1]
    map_public_ip_on_launch = "true"
        tags = {
    "Name" = var.common_tags ["pub_subnet_2_name"]
    "owner" = var.common_tags ["owner"]
  }
  
}

output "ekrushi-web_pub_subnet_1a_id" {
    value = aws_subnet.geniric_pub_subnet_1.id  
}

output "ekrushi-web_pub_subnet_1b_id" {
    value = aws_subnet.geniric_pub_subnet_2.id  
}