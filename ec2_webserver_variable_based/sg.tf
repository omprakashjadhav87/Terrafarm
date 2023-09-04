resource "aws_security_group" "genericwebserver_sg" {
    vpc_id = data.terraform_remote_state.vpc_details.outputs.ekrushi_dev_vpc_id
    name = "webserver"
    description = "allow web trafic"
    tags = {
        "Name" ="webserver_sg"

    }
  
  egress {
    from_port =0
    to_port    =0
    protocol  ="-1"
    cidr_blocks =["0.0.0.0/0"]
}
    ingress {
        description  ="allow web trafic on 80 port"
        from_port = 80
        to_port    = 80
        protocol  ="tcp"
        cidr_blocks =["0.0.0.0/0"]
    }
    ingress {
        description  ="allow all inside trafic"
        from_port = 0
        to_port    = 0
        protocol  ="-1"
        self = true
    }

        ingress {
        description  ="allow ssh access on port 22"
        from_port = 22
        to_port    = 22
        protocol  ="tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

}
