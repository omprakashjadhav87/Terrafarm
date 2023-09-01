#--------------------------------------------#
#       Create public rt                     #
#--------------------------------------------#
resource "aws_route_table" "generic_pub_rt" {
  vpc_id = aws_vpc.generic_vpc.id
  tags = {
    "Name"  = "ekrushi_pub_rt"
    "owner" = "devopsview"
  }
}

#--------------------------------------------#
#       Create route for IGW                 #
#--------------------------------------------#
resource "aws_route" "generic_pub_rt_igw" {
  route_table_id         = aws_route_table.generic_pub_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.generic_igw.id
}

#--------------------------------------------#
#       Public subnet association            #
#--------------------------------------------#
resource "aws_route_table_association" "generic_pub_subnet_1_asso" {
  route_table_id = aws_route_table.generic_pub_rt.id
  subnet_id      = aws_subnet.generic_pub_subnet_1.id
}

resource "aws_route_table_association" "generic_pub_subnet_2_asso" {
  route_table_id = aws_route_table.generic_pub_rt.id
  subnet_id      = aws_subnet.generic_pub_subnet_2.id
}

#--------------------------------------------#
#                END                         #
#--------------------------------------------#