module "us" {
  source = "./application_module"
  providers = {
    aws = aws.us
  }
}

module "uk" {
  source = "./application_module"
  providers = {
    aws = aws.uk
  }
}