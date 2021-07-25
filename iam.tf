resource "aws_iam_role" "role_for_LDC" {
  name = "AWSAssumeRolePolicyForLambda"

  assume_role_policy = file("policies/assume-role-policy.json")
}

resource "aws_iam_role_policy" "lambda_policy" {
  name = "LambdaPolicy"
  role = aws_iam_role.role_for_LDC.id

  policy = file("policies/policy.json")
}
