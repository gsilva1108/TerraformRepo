resource "aws_iam_user" "user" {
    name = var.user_name
    tags = {
        Name = var.user_name
    }
}

resource "aws_iam_access_key" "user_key" {
    user = aws_iam_user.user.name
}

resource "aws_iam_user_policy" "user_policy" {
    name = "user_policy_for_testing"
    user = aws_iam_user.user.name
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "iam:*"
            ],
            "Effect": "Allow",
            "Resource": "*"
        }
    ]
}
EOF
}