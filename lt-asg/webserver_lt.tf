/*Creater LT */
resource "aws_launch_template" "generic_lt" {

    name_prefix   = var.lt_name
    image_id = data.aws_ami.latest_amazon_ami.id
    instance_type = var.instance_type
    iam_instance_profile {
      name = var.iam_role
    }
    user_data = filebase64("${path.module}/${var.userdata_file}")
  vpc_security_group_ids = [ aws_security_group.genericwebserver_sg.id, ]
tag_specifications {
  
  resource_type = "instance"

  tags = {
    "Name"=var.server_tag["Name"]
    "owner"=var.server_tag["owner"]

  }
}

block_device_mappings {
  device_name = "/dev/xvda"
  ebs {
    
    volume_size = var.root_volume["volume_size"]
    volume_type = var.root_volume["volume_type"]
    delete_on_termination = var.root_volume["delete_on_termination"]
  }
}

network_interfaces {
  associate_carrier_ip_address = true
}

}