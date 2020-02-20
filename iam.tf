provider "aws" {
  assume_role {
    role_arn     = role
  }
}


resource "aws_iam_role" "test_role" {
  name = "test_role"

  assume_role_policy = <<EOF
  {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Action": ["*"],
          "Effect": "Allow",
          "Resource": "*"
        }
      ]
    }
  EOF

  tags = {
    Name = "iam-role-atlantis"
  }
}


