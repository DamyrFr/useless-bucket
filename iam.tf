resource "aws_iam_role" "this" {
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
  name               = "lambda-uselessbox"
}

resource "aws_iam_policy" "this" {
  name        = "lambda-s3-access"
  path        = "/"

  policy = data.template_file.policy.rendered
}

resource "aws_iam_role_policy_attachment" "this" {
  policy_arn = aws_iam_policy.this.arn
  role = aws_iam_role.this.name
}
