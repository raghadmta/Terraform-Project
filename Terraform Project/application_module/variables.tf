variable "image_id" {
  type = map(any)
  default = {
    us-east-1 = "ami-05fa00d4c63e32376"
    eu-west-2 = "ami-00785f4835c6acf64"
  }
}

variable "aws_s3_bucket_name" {
  type = map(any)
  default = {
    us-east-1 = "the-ducoment-bucket-us"
    eu-west-2 = "the-ducoment-bucket-uk"
  }
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
