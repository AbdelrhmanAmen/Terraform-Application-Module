variable "author" {
    description = "owner of the code"
    type = string
}

variable "type" {
    description = "type of ec2 instance"
    type = string
}

variable "image" {
    description = "ami id"
    type = string
}

variable "vpc" {
    description = "vpc id"
    type = string 
}

variable subnet_id {
    description="public subnet id in network-module"
    type = string
}