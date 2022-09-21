module "us" {
  source = "../application_module"
  providers = {
    aws = aws.us
  }
}