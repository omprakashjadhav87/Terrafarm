resource "aws_security_group" "genericwebserver_sg" {
    vpc_id = data.terraform_remote_state.vpc_details.outputs.ekrushi_dev_vpc_id
    name = var.sg_name
    description = var.description
    tags = {
        "Name" =var.sg_tags["Name"]

    }
  
  egress {
    from_port =0
    to_port    =0
    protocol  ="-1"
    cidr_blocks =["0.0.0.0/0"]
}
    /*ingress {
        description  ="allow web trafic on 80 port"
        from_port = 80
        to_port    = 80
        protocol  ="tcp"
        cidr_blocks =["0.0.0.0/0"]
    }*/
    /*ingress {
        description  ="allow all inside trafic"
        from_port = 0
        to_port    = 0
        protocol  ="-1"
        self = true
    }*/

 /*inbond Rule */

 dynamic "ingress" {
    for_each = var.sg_port
    iterator = rule_port
    content {
      description  ="sg for httpd webserver${rule_port.value}"
        from_port = rule_port.value
        to_port    = rule_port.value
        protocol  ="tcp"
        cidr_blocks = ["0.0.0.0/0"]
        
    }
 }
}
