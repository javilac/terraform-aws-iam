output "this_user_name" {
  description = "The name of the IAM user"
  value       = "${module.user.this_user_name}"
}
