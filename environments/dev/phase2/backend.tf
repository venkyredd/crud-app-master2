terraform {
  backend "s3" {
    bucket         = "v-infra1"
    key            = "infra/terraform.tfstate"
    region         = var.aws_region
    encrypt        = true
  }
}
