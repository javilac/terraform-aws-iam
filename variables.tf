variable "user_name" {
  description = "The user's name."
}

variable "path" {
  description = "Path in which to create the user."
  default     = "/"
}

variable "force_destroy" {
  description = "When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices."
  default     = false
}

variable "pgp_key" {
  description = "Either a base-64 encoded PGP public key, or a keybase username in the form keybase:some_person_that_exists."
  default     = ""
}

variable "policy" {
  description = "The (json) policy document"
}

variable "policy_name" {
  description = "The name of the policy. If omitted, Terraform will assign a random, unique name."
  default     = ""
}
