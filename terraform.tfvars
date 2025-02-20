enable_bastion  = false
deployment_id   = "astronew7"
email           = "belinda@kairosaerospace.com"
route53_domain  = "kairos.ae"
vpc_id          = "vpc-0605c52360126905b"
private_subnets = ["subnet-0980531bdff832d7a", "subnet-0f3246889e3255fca", "subnet-0f5c529cb9682b544"]
# vpc_id                                  = "vpc-7cbb2419"
# private_subnets                         = ["subnet-1ba4d37e", "subnet-e26bfe95", "subnet-6748e13e"]
management_api                          = "public"
#security_groups_to_whitelist_on_eks_api = ["sg-0cf0bf837e69f369e"]
#security_groups_to_whitelist_on_eks_api = ["sg-05cbcf24e614ac124"]
min_cluster_size = 4

private_load_balancer = false
# cluster_type is needed in order to expose airflow gui out
cluster_type                    = "public"
pub_key_for_worker_aws_key_pair = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSXC4cryFzZSrom6hhjtoK0GnZyIlxTb2dkLCZjcYMqtqwdymRHJotjQNjtqxiWevtxKZEj6p7hocU+K7Arr4ad7CNUvkV/qugt/w+L1m2fWoVNbBU2Yqrs9mxGhgbSZFb5gsE3BEKzHWpI83xCopzAIM82xvFPSo2bjUYxkq3oVon2k/T8c1m6rbY9wYbcIoadnCsnPAoaSsTU4kQpI6ChXtWNMzzbExU0/XztrOTYfgeQB+nOJb3vnCXlY/IA5C5+V3WSb8c7OVe8XnDki3Cy4WuedryRX4DiaHJ8fEapbOYALDqelkIG4186phlIXVD+C2yPQ5Bx2VsEewW5ggj ubuntu@ip-172-31-36-219"

workers_additional_policies = [
  "arn:aws:iam::aws:policy/AmazonEC2FullAccess",
  "arn:aws:iam::aws:policy/AmazonSQSFullAccess",
  "arn:aws:iam::aws:policy/AWSLambdaExecute",
  "arn:aws:iam::aws:policy/AmazonSNSFullAccess",
  "arn:aws:iam::aws:policy/service-role/AWSLambdaRole",
#  "arn:aws:iam::137296740171:policy/s3_access_policy",
  "arn:aws:iam::137296740171:policy/tf-rube_rundeck_passrole_policy",
]
