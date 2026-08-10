resource "aws_s3_bucket" "terraform_state" {
  bucket = "cloud-devops-lab-2026-terraform-state"

  tags = {
    Name = "cloud-devops-lab-2026-terraform-state"
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "cloud-devops-lab-2026-terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "cloud-devops-lab-2026-terraform-lock"
  }
}