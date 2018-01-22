variable "policy" {
  description = "The (json) policy document"
}

variable "name" {
  description = "The name of the policy. If omitted, Terraform will assign a random, unique name."
  default     = ""
}

variable "user_name" {
  description = "The user's name."
}
