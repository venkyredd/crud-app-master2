terraform {
  backend "s3" {
    bucket         = "v-infra1"
    key            = "infra/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
