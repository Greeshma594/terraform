resource "aws_s3_bucket" "remote_state_s3" {
    bucket = var.s3_bucket_name
}

resource "aws_s3_bucket_versioning" "bucket_versioning_enable" {
    bucket = aws_s3_bucket.remote_state_s3.bucket
    versioning_configuration {
        status = "Enabled" 
    }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "sse_encryption" {
  bucket = aws_s3_bucket.remote_state_s3.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}