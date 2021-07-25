resource "aws_s3_bucket" "lambda" {
  bucket        = "lambda-${random_id.this.hex}"
  acl           = "private"
  force_destroy = true
}

resource "aws_s3_bucket_object" "javascript" {
  bucket = aws_s3_bucket.lambda.bucket
  key    = "index.zip"
  source = "lambda/index.zip"
}

