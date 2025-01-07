resource "aws_instance" "terra_ec2" {
    ami = "ami-005fc0f236362e99f"
    instance_type = "t2.micro"
    subnet_id = "subnet-0e79a9f594e128f7b"
    associate_public_ip_address = true 
    tags = {
        name = "terra_ec2"

    }

}

module "create_s3_bucket" {
    source = "./modules/create-s3"
    bucket_name = var.root_bucket_name

}

module "create_dynamodb" {
    source = "./modules/dynamodb_table"
    dynamodb_name = var.root_dynamodb_name
    hash_key = var.root_hash_key
}