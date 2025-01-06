resource "aws_instance" "terra-ec2" {
    ami = "ami-005fc0f236362e99f"
    instance_type = "t2.micro"
    subnet_id = "subnet-0d482404dd6fcb8e4"

}
