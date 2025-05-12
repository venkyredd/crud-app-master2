terraform {
  backend "s3" {
    bucket         = "v-infra-backend"
    key            = "infra/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
  }
}
