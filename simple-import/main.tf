resource "aws_s3_bucket" "demo_bucket" {
  bucket = "sa-ts-import-demo1"

  tags ={
    "Environment" = "Development"
  }
}