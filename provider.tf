provider "aws" {
  region = var.region
  default_tags {
    tags = {
      owner          = "eanselmi@edrans.com"
      Name           = "Test For CNB"
      environment    = "tst"
      costCenter     = "SYSENG"
      tagVersion     = 1
      role           = "tst"
      project        = "CNB"
      expirationDate = "12/12/2022"
    }
  }
}

# terraform {
#   backend "s3" {
#     bucket         = "CNB-tfstate"
#     key            = "tfstate/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "CNB-terraform-locks"
#     encrypt        = true
#   }
# }

# resource "aws_kms_key" "CNB-key" {
#   description             = "This key is used to encrypt bucket objects"
#   deletion_window_in_days = 10
# }

# resource "aws_s3_bucket" "CNB-tfstate" {
#   bucket = "CNB-tfstate"

#   server_side_encryption_configuration {
#     rule {
#       apply_server_side_encryption_by_default {
#         kms_master_key_id = aws_kms_key.CNB-key.arn
#         sse_algorithm     = "aws:kms"
#       }
#     }
#   }
#   versioning {
#     enabled = true
#   }
# }

# resource "aws_dynamodb_table" "CNB-terraform_lock" {
#    name         = "terraform-locks"
#    billing_mode = "PAY_PER_REQUEST"
#    hash_key     = "LockID"
#    attribute {
#      name = "LockID"
#      type = "S"
#    }
#  }
