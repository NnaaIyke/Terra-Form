provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "example" {
    ami              = "ami-06eecef118bbf9259"
    instance_type    = "t2.micro"

    tags = {
       name = "terraform-example"
    }
  
}