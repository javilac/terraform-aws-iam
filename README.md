AWS Identity and Access Management (IAM) Terraform module
================================================

Terraform module which creates IAM resources on AWS.

These types of resources are supported:

* [User](https://www.terraform.io/docs/providers/aws/d/iam_user.html)
* [User Policy](https://www.terraform.io/docs/providers/aws/r/iam_policy.html)
* [Access_key](https://www.terraform.io/docs/providers/aws/r/iam_access_key.html)

Root module calls these modules which can also be used separately to create independent resources:

* [user]() - creates iam user
* [access_key]() - creates access key to user
* [policy]() - Creates a policy and attach it to user

Usage
-----

```hcl
module "user" {
  source = "<giturl>"
  user_name = "access-to-s3-examplebucket"
  policy_name = "access-to-s3-examplebucket-rw"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::examplebucket"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:List*",
                "s3:Get*",
                "s3:Put*",
                "s3:Delete*"
            ],
            "Resource": [
                "arn:aws:s3:::examplebucket/*"
            ]
        }
    ]
}
EOF
}
```

Authors
-------

Module created by [Javier Avila](https://github.com/javilac).

License
-------

Apache 2 Licensed. See LICENSE for full details.