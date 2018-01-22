resource "aws_iam_user_policy" "policy" {
  policy = "${var.policy}"
  name   = "${var.name}"
  user   = "${var.user_name}"
}
