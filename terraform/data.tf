data "aws_caller_identity" "current" {
  provider = aws.no_assume_role
}
data "aws_region" "current" {}