resource "aws_instance" "terraform"{
    ami = var.ami_id
    instance_type = var.instances
    vpc_security_group_ids = var.sg_id
    

    tags = merge (var.common_tags ,{
    Name = "terraform"}
    )
    }  
