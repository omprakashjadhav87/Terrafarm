resource "aws_instance" "ec2_webserver" {
    ami = "ami-051f7e7f6c2f40dc1"
    subnet_id = "subnet-0e5aaadb394c9e8fc"
    instance_type = "t2.micro"
    security_groups = [ "sg-029ec7eac094543e3" ]
    tags = {
        "Name"="web_ec2_sever"
    }
  
}