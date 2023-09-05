instance_type = "t2.micro"
userdata_file ="webserver_httpd.sh"
server_tag = {
  "Name"        = "web_httpd_server"
  "owner"       = "devops"
}
root_volume = {
  volume_size  = 8
  volume_type   ="gp3"
  delete_on_termination = true
}
ebs_volume = {
 volume_size  = 5
  volume_type   ="gp2"
  device_name = "/dev/sdh"
}

iam_role = "ec2_user_full_access"

sg_name = "webserver_httpd_sg"
description ="sg for httpd webserver"
sg_tags ={
    "Name"  ="webserver_httpd_sg"
}
sg_port =[22,80,90,100]
