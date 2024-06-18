provider "aws" {
    region                  = var.aws_region
}

resource "aws_instance" "public-ec2" {
    ami           = var.ami_id
    instance_type = var.instance_type
    key_name      = "notes-app-key-pair"
    associate_public_ip_address = true

    tags = {
        Name = "ec2-main"
    }

}
