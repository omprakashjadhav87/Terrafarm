module "httpd_sg_lt" {
    source                                           = "../../module/lt_module"
    securitygroup_name                               = var.sg_name
    sg_description                                   =var.description
    sg_tags ={
        
    } 
    












  
}