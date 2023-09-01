resource "aws_subnet" "geniric_pub_subnet_1" {
    vpc_id = aws_vpc.geniric_vpc.id
    availability_zone = "us-east-1a"
    cidr_block = "10.0.0.0/24"
    map_public_ip_on_launch = "true"
      tags = {
    "Name" = "ekrushi-web_pub_subnet_1a"
    "owner" = "devopsview"
  }
  
}

resource "aws_subnet" "geniric_pub_subnet_2" {
    vpc_id = aws_vpc.geniric_vpc.id
    availability_zone = "us-east-1b"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true"
      tags = {
    "Name" = "ekrushi-web_pub_subnet_1b"
    "owner" = "devopsview"
  }
  
}

output "ekrushi-web_pub_subnet_1a_id" {
    value = aws_subnet.geniric_pub_subnet_1.id  
}

output "ekrushi-web_pub_subnet_1b_id" {
    value = aws_subnet.geniric_pub_subnet_2.id  
}