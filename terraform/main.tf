terraform {
  backend "s3" {
    key          = "statefile.tfstate"
    use_lockfile = true
    encrypt      = true
  }
}

provider "aws" {
  alias  = "no_assume_role"
  region = data.aws_region.current.region
}