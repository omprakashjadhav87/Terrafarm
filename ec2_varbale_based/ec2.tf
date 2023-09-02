resource "aws_instance" "ec2_webserver" {
    ami = data.aws_ami.latest_amazon_ami.id
    subnet_id = "subnet-0e5aaadb394c9e8fc"
    instance_type = "t2.micro"
    security_groups = [ "sg-029ec7eac094543e3" ]
    tags = {
        "Name"="web_ec2_sever"
    }
  
}