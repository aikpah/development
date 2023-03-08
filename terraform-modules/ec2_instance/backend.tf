

terraform {
  backend "s3" {
    bucket         = "cms-cloud-dc-upgrade-us-east-1"
    key            = "terraform/itops_poc_dc.tfstate"
    region         = "us-east-1"
    dynamodb_table = "TerraformLock"
  }
}