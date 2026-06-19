provider "aws" {
  alias  = "no_assume_role"
  region = data.aws_region.current.region
}