output "ec2_public_ip" {

    value = aws_instance.terra_ec2.public_ip
}

variable "root_bucket_name" {
    type = string 
    default = "my-s3-backend-test-98654372"
}

variable "root_dynamodb_name" {
    type = string 
    default = "my_dynamodb_locking_table"
}

variable "root_hash_key" {
    type = string
    default = "LockID"
}