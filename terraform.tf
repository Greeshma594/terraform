terraform {
    required_version = ">=0.12"
    required_providers {
        aws = {
            version = ">=2.7.0"
        }
    }
    
    backend "s3" {
        bucket = "my-s3-backend-test-98654372"
        key = "backend/terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "my_dynamodb_locking_table"
        encrypt = true
    }
}