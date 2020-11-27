terraform {
  backend "s3" {
    bucket = "rsarnik-terraform-state"
    key    = "cmanagement-dynamodb-table"
    region = "us-east-1"
  }
}