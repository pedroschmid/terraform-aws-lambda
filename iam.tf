resource "aws_iam_role_policy" "lambda_policy" {
  name = "lambda_policy"
  role = aws_iam_role.role_for_LDC.id

  policy = file("policies/policy.json")
}


resource "aws_iam_role" "role_for_LDC" {
  name = "assume-role-policy"

  assume_role_policy = file("policies/assume-role-policy.json")
}