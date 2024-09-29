resource "aws_instance" "terraform"{
    ami = var.ami_id
    instance_type = var.instance
    vpc_security_group_ids = ["sg-04ae891e9bad6b5b6"]

    tags = {
    Name = "terraform"
    }
    
}   