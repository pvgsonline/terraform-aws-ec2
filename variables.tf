variable "ami_id" {
    type = string
  #default     = "ami-09c813fb71547fc4f"
}

variable "instances"{
    default = "t3.micro"
    type = string
    validation {
        condition = contains(["t3.micro","t3.medium","t3.small"], var.instances)
        error_message = "valid values are (t3.micro,t3.medium,t3.small) "
    }
}

variable "sg_id"{
    type = list(string)
    
}

variable "common_tags"{
    type = map
    
}