terraform {
  required_version = ">= 0.12.7, < 0.14"

  # backend "s3" {
  #   bucket          = "as-ceq-terraform-state"
  #   key             = "terraform-s3-dyndb/terraform.tfstate"
  #   region          = "us-east-1"
  #   dynamodb_table  = "terraform-statelock"
  #   encrypt         = "true"
  # }
}