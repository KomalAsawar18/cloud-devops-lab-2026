terraform {
  backend "s3" {
    bucket         = "cloud-devops-lab-2026-terraform-state"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "cloud-devops-lab-2026-terraform-lock"
    encrypt        = true
  }
}