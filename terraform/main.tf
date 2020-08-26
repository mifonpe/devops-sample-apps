provider "aws" {
  region = "us-east-2"
}

module "ecr" {
  source                 = "git::https://github.com/cloudposse/terraform-aws-ecr.git?ref=master"
  namespace              = var.namespace
  stage                  = var.stage
  name                   = var.name
  image_names            = ["test-go", "test-php"]
  principals_full_access = [aws_iam_role.ecr_admin_role.arn]
  tags                   = local.tags

}

resource "aws_iam_role" "ecr_admin_role" {
  name = "ecr-admin"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

  tags = local.tags
}
