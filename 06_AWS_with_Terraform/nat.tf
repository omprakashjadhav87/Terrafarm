#--------------------------------------------#
#       Create public ip fro nat             #
#--------------------------------------------#
resource "aws_eip" "nat_ip" {
  vpc = true
}
#--------------------------------------------#
#       Create NAT                           #
#--------------------------------------------#
resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat_ip.id
  subnet_id     = aws_subnet.generic_pub_subnet_1.id

  tags = {
    Name = "NAT gw"
  }
}

#--------------------------------------------#
#       Output NAT id                        #
#--------------------------------------------#
output "ekrushi_dev_natgw_id" {
  value = aws_nat_gateway.nat_gw.id
}