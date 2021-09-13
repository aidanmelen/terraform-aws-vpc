# Security Groups
# output "default_security_group_id" {
#   description = "The ID of the security group created by default on VPC creation"
#   value = element(
#     split(":security-group/", data.aws_security_group.default.arn),
#     length(split(":security-group/", data.aws_security_group.default.arn)) - 1
#   )
# }