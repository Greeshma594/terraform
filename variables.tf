output "ec2_public_ip" {
    value = aws_instance.terra_ec2.public_ip
}