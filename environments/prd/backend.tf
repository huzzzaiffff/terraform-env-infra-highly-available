terraform {
  backend "s3" {
    bucket         = "yourcompany-terraform-state-unique" # Must match bootstrap bucket
    key            = "environments/prd/terraform.tfstate"
    region         = "us-west-2" # Must match bootstrap region
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }
}