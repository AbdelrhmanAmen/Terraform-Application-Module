resource "aws_instance" "application" {
    ami           = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_http_https.id]
    subnet_id              = var.subnet_id
    tags = {
        "Name" = "web-app-${var.author}"
    }
}
