resource "aws_instance" "generic_ec2"{
    ami ="ami-0f34c5ae932e6f0e4"
    availability_zone= "us-east-1c"
    instance_type = "t2.micro"

}