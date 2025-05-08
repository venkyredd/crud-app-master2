terraform {
  backend "s3" {
    bucket         = "v-backend-s3"   
    key            = "dev/phase2/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
