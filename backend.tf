terraform {
  backend "s3" {
    bucket = "manju-terraform-statefiles"
    key    = "cm/ec2.tfstate"
    region = "ap-south-1"
    # DynamoDB table for locking (optional in newer versions)
    #dynamodb_table = "my-lock-table" 
  }
}
