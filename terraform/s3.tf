resource "aws_s3_bucket" "state-bucket" {
  bucket        = var.state_bucket_name
  force_destroy = false
}

resource "aws_s3_bucket_versioning" "state_versioning" {
  bucket = aws_s3_bucket.state-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}