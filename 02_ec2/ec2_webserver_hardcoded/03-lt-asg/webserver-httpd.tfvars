lt_name = "webserver_httpd_lt"

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

iam_role = "ec2-s3-read-access-role"
sg_name = "webserver_httpd_sg"
description ="sg for httpd webserver"
sg_tags ={
    "Name"  ="webserver_httpd_sg"
}
sg_port =[22,80,90,100]

/*var for asg */
asg_name = "webserver_asg"

max_size = 3
min_size = 1
desired_capacity = 1