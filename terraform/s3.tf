resource "aws_s3_bucket" "state-bucket" {
  bucket        = var.STATE_BUCKET_NAME
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "state_versioning" {
  bucket = aws_s3_bucket.state-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}