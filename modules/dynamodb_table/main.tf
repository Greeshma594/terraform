resource "aws_dynamodb_table" "dynamodb-terraform-lock" {
   name = var.dynamodb_name
   hash_key = var.hash_key
   billing_mode = "PAY_PER_REQUEST"


   attribute {
      name = var.hash_key
      type = "S"
   }

   tags = {
     Name = "Terraform Lock Table"
   }
}