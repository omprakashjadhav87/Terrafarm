resource "aws_instance" "generic_ec2"{
    ami ="ami-0f34c5ae932e6f0e4"
    availability_zone= "us-east-1c"
    instance_type = "t2.micro"

}

resource "aws_eip" "genric_ec2_eip" {
    tags = {
        "Name"="Test_Server"
        "owner"="devops"
    }

}

resource "aws_eip_association" "attach_ec2_eip" {
    instance_id = aws_instance.generic_ec2.id
    allocation_id = aws_eip.genric_ec2_eip.allocation_id

}