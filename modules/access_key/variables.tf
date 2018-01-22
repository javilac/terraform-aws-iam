variable "user_name" {
  description = "The IAM user to associate with this access key."
}

variable "pgp_key" {
  description = "Either a base-64 encoded PGP public key, or a keybase username in the form keybase:some_person_that_exists."
  default     = ""
}
