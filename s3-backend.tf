terraform {
  backend "s3" {
    bucket = "my-terraform-state84"
    key    = "environments2"
    region = "us-east-1"
    #    dynamodb_table = "ndcc-terraform-state-lock-dynamo"
    encrypt = true
  }
}