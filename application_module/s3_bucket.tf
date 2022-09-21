resource "aws_s3_bucket" "duc_bucket" {
  bucket        = lookup(var.aws_s3_bucket_name, "${data.aws_region.current.name}")
  force_destroy = true
  tags = {
    Name = "Doc-tax"
  }
}