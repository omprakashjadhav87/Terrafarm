module "httpd_sg_lt" {
    source               = "../../module/lt_module"
    sg_name               = "httpd_sg"
description               = "allow httpd trafic"
    sg_tags ={
        "Name" = "httpd_sg"
}

sg_port                 = [22,80,90,100]

vpc_id       = data.terraform_remote_state.vpc_details.outputs.ekrushi_dev_vpc_id

lt_name = "webserver_httpd_lt"
instance_type = "t2.micro"
user_data = "${file("webserver_httpd.sh")}"      
server_tag = {
  "Name"        = "web_httpd_server"
  "owner"       = "devops"
}
root_volume = {
  volume_size  = 8
  volume_type   ="gp3"
  delete_on_termination = true
}

iam_role = "ec2-s3-read-access-role"



}