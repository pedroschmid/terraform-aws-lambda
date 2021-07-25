resource "aws_lambda_function" "this" {
  function_name = "myFunction"
  s3_bucket     = aws_s3_bucket.lambda.bucket
  s3_key        = aws_s3_bucket_object.javascript.id
  role          = aws_iam_role.role_for_LDC.arn
  handler       = "index.handler"
  runtime       = "nodejs12.x"
}
