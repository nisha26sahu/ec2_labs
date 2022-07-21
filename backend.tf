terraform {
  backend "s3" {
    bucket = "talent-academy-nishasahu-lab-tfstates"
    key = "talent-academy/ec2/terraform.tfstates"
    region = "eu-west-1"
    dynamodb_table = "terraform-lock"
  }
}