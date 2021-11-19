data "aws_iam_policy_document" "assume_role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

data "template_file" "policy" {
  template = "${file("./policy_template.tpl")}"
  vars = {
    bucketname = var.bucketname,
    lambdaname = var.lambdaname,
    accountid = data.aws_caller_identity.current.account_id
  }
}

data "aws_caller_identity" "current" {}
