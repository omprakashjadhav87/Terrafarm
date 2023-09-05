resource "aws_instance" "ec2_webserver" {
    ami = data.aws_ami.latest_amazon_ami.id
    subnet_id = data.terraform_remote_state.vpc_details.outputs.ekrushi-web_pub_subnet_1a_id
    instance_type = var.instance_type
    security_groups = [aws_security_group.genericwebserver_sg.id,]
    user_data = file("${path.module}/${var.userdata_file}")
    #security_groups = [ "sg-0c1bcfd2ad47e0b56" ]#
   
    tags = {
        "Name"=var.server_tag["Name"]
        "owner"=var.server_tag["owner"]
    }
  /*Root volume custumaztion */

  root_block_device {
    volume_size = var.root_volume["volume_size"]
    volume_type = var.root_volume["volume_type"]
    delete_on_termination = var.root_volume["delete_on_termination"]
    tags = {
        "Name"=var.server_tag["Name"]
        "owner"=var.server_tag["owner"]
    }
  }
/*Attached extra EBS volume */

ebs_block_device {
  device_name = var.ebs_volume["device_name"]
  volume_size = var.ebs_volume["volume_size"]
  volume_type = var.ebs_volume["volume_type"]
tags = {
    "Name"=var.server_tag["Name"]
    "owner"=var.server_tag["owner"]
}
}   

/*attached iam role to ec2 server */

aws_iam_instance_profile = var.iam_role

}