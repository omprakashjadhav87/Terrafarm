/*create ASG */

resource "aws_autoscaling_group" "webserver_asg" {
    name = var.asg_name
    max_size =var.max_size
    min_size = var.min_size
    desired_capacity = var.desired_capacity
    vpc_zone_identifier = [data.terraform_remote_state.vpc_details.outputs.ekrushi-web_pub_subnet_1a_id,data.terraform_remote_state.vpc_details.outputs.ekrushi-web_pub_subnet_1b_id]
    #launch_template {
     # id = aws_launch_template.generic_lt.id
      #version = "$Latest"

    #}

 mixed_instances_policy {
        launch_template {
           launch_template_specification {
              launch_template_id = aws_launch_template.generic_lt.id
              version = "$Latest"
           }
           override {
                instance_type     = "c4.large"
           }

            override {
                instance_type     = "c3.large"
            }
    }      
  }

}



