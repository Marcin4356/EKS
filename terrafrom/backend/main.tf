provider "aws" {}

resource "aws_s3_bucket" "example" {
  bucket = "terraform-eks-state-bucket4356"

    lifecycle {
      prevent_destroy = false
    }
  }


resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "terraform-eks-state-dynamo-bucket4356"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

}