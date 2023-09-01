#--------------------------------------------#
#       Create pvt rt                        #
#--------------------------------------------#
resource "aws_route_table" "generic_pvt_rt" {
  vpc_id = aws_vpc.generic_vpc.id
  tags = {
    "Name"  = "ekrushi_pvt_rt"
    "owner" = "devopsview"
  }
}

#--------------------------------------------#
#       Create route for NAT                 #
#--------------------------------------------#
resource "aws_route" "generic_pvt_rt_igw" {
  route_table_id         = aws_route_table.generic_pvt_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_nat_gateway.nat_gw.id
}

#--------------------------------------------#
#       private subnet association            #
#--------------------------------------------#
resource "aws_route_table_association" "generic_pvt_subnet_1_asso" {
  route_table_id = aws_route_table.generic_pvt_rt.id
  subnet_id      = aws_subnet.generic_pvt_subnet_1.id
}

resource "aws_route_table_association" "generic_pvt_subnet_2_asso" {
  route_table_id = aws_route_table.generic_pvt_rt.id
  subnet_id      = aws_subnet.generic_pvt_subnet_2.id
}

#--------------------------------------------#
#                END                         #
#--------------------------------------------#