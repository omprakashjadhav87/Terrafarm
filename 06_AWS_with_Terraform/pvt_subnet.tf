resource "aws_subnet" "geniric_pvt_subnet_1" {
    vpc_id = aws_vpc.geniric_vpc.id
    availability_zone = "us-east-1a"
    cidr_block = "10.0.2.0/24"
    
      tags = {
    "Name" = "ekrushi-db_pvt_subnet_1a"
    "owner" = "devopsview"
  }
  
}

resource "aws_subnet" "geniric_pvt_subnet_2" {
    vpc_id = aws_vpc.geniric_vpc.id
    availability_zone = "us-east-1b"
    cidr_block = "10.0.3.0/24"
    
      tags = {
    "Name" = "ekrushi-db_pvt_subnet_1b"
    "owner" = "devopsview"
  }
  
}

output "ekrushi-db_pvt_subnet_1a_id" {
    value = aws_subnet.geniric_pvt_subnet_1.id  
}

output "ekrushi-db_pvt_subnet_1b_id" {
    value =aws_subnet.geniric_pvt_subnet_2.id 
}