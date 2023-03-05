resource "aws_instance" "application" {
    ami           = var.image
    instance_type = var.type
    vpc_security_group_ids = [aws_security_group.allow_http_https.id]
    subnet_id              = var.subnet_id
    tags = {
        "Name" = "web-app-${var.author}"
    }
}
