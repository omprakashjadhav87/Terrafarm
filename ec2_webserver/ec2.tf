resource "aws_instance" "ec2_webserver" {
    ami = data.aws_ami.latest_amazon_ami.id
    subnet_id = data.terraform_remote_state.vpc_details.outputs.ekrushi-web_pub_subnet_1a_id
    instance_type = "t2.micro"
    security_groups = [aws_security_group.genericwebserver_sg.id]
    #security_groups = [ "sg-0c1bcfd2ad47e0b56" ]#
    tags = {
        "Name"="appcheweb_ec2_sever"
    }
  
}