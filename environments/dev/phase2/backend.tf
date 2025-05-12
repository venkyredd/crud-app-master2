terraform {
  backend "s3" {
    bucket         = "v-infra-backend"
    key            = "infra/terraform.tfstate"
    region         = var.aws_region
    encrypt        = true
  }
}
