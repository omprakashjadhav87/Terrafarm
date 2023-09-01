resource "aws_internet_gateway" "geniric_igw" {
    vpc_id = aws_vpc.geniric_vpc.id
    tags = {
    "Name" = "ekrushi-dev-igw"
    "owner" = "devopsview"

    }
}