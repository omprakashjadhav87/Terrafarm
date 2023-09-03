resource "aws_security_group" "webserver_sg" {
    vpc_id = data.terraform_remote_state.vpc_details.outputs.vpc_id
    name = "webserver"
    description = "allow web trafic"
    tags = {
        "Name" ="webserver_sg"

    }
  
}

egress{
    from_port =0
    to_prt    =0
    protocol  ="-1"
    cidir_block =["0.0.0.0/0"]

    ingress ={
        description  ="allow web trafic on 80 port"
        from_port =80
        to_prt    =80
        protocol  ="tcp"
        cidir_block =["0.0.0.0/0"]
    }
    ingress ={
        description  ="allow web trafic on 22 port"
        from_port =22
        to_prt    =22
        protocol  ="tcp"
        cidir_block =["0.0.0.0/0"]
    }
}