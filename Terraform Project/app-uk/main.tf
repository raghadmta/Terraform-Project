module "uk" {
  source = "../application_module"
  providers = {
    aws = aws.uk
  }
}