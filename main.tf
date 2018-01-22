module "user" {
  source = "./modules/user"

  path          = "${var.path}"
  force_destroy = "${var.force_destroy}"
  user_name     = "${var.user_name}"
}

module "access_key" {
  source = "./modules/access_key"

  user_name = "${var.user_name}"
  pgp_key   = "${var.pgp_key}"
}

module "policy" {
  source = "./modules/policy"

  policy    = "${var.policy}"
  name      = "${var.policy_name}"
  user_name = "${var.user_name}"
}
