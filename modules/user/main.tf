#aws_iam_user

resource "aws_iam_user" "this" {
  name          = "${var.user_name}"
  path          = "${var.path}"
  force_destroy = "${var.force_destroy}"
}
